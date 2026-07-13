local function clean_tex(s)
  if not s then
    return ""
  end

  -- Remove manual line-break spacing like \\[-0.5em]
  s = s:gsub("\\\\%[.-%]", " ")
  -- Remove plain line breaks
  s = s:gsub("\\\\", " ")
  -- Common TeX formatting commands used in your fields
  s = s:gsub("\\itshape", " ")
  s = s:gsub("\\normalfont", " ")
  s = s:gsub("\\bfseries", " ")
  s = s:gsub("\\Large", " ")
  s = s:gsub("\\large", " ")
  s = s:gsub("\\footnotesize", " ")
  s = s:gsub("\\scriptsize", " ")
  s = s:gsub("\\textit%s*{(.-)}", "%1")
  s = s:gsub("\\texttt%s*{(.-)}", "%1")
  s = s:gsub("\\&", "&")
  s = s:gsub("%s+", " ")

  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

local function jobsection_blocks(company, dates, role)
  company = clean_tex(company)
  dates = clean_tex(dates)
  role = clean_tex(role)

  local header = { pandoc.Strong(company) }
  if dates ~= "" then
    table.insert(header, pandoc.Space())
    table.insert(header, pandoc.Str("(" .. dates .. ")"))
  end

  local out = { pandoc.Para(header) }
  if role ~= "" then
    table.insert(out, pandoc.Para({ pandoc.Emph(role) }))
  end
  return out
end

local function projectsection_blocks(tech, title, desc)
  title = clean_tex(title)
  desc = clean_tex(desc)
  tech = clean_tex(tech or "")

  local lead = { pandoc.Strong(title) }
  if tech ~= "" then
    table.insert(lead, pandoc.Space())
    table.insert(lead, pandoc.Emph("[" .. tech .. "]"))
  end

  local out = { pandoc.Para(lead) }
  if desc ~= "" then
    table.insert(out, pandoc.Para({ pandoc.Str(desc) }))
  end
  return out
end

local function is_macro_definition_block(t)
  return
    t:match("^\\newcommand%s*{\\jobsection}") or
    t:match("^\\NewDocumentCommand%s*{\\jobsection}") or
    t:match("^\\newcommand%s*{\\projectsection}") or
    t:match("^\\NewDocumentCommand%s*{\\projectsection}") or
    t:match("^\\newcommand%s*{\\techstack}") or
    t:match("^\\NewDocumentCommand%s*{\\foo}") or
    t:match("^\\newcommand%s*{\\foo}")
end

function RawBlock(el)
  if el.format ~= "tex" and el.format ~= "latex" then
    return nil
  end

  local t = el.text

  -- Drop macro definitions from README output
  if is_macro_definition_block(t) then
    return {}
  end

  -- New form: \jobsection[date]{company}{role}
  local d, c, r = t:match("^\\jobsection%s*%[(.-)%]%s*{(.-)}%s*{(.-)}%s*$")
  if c then
    return jobsection_blocks(c, d, r)
  end

  -- Old form: \jobsection{company}{date}{role}
  local c1, d1, r1 = t:match("^\\jobsection%s*{(.-)}%s*{(.-)}%s*{(.-)}%s*$")
  if c1 then
    return jobsection_blocks(c1, d1, r1)
  end

  -- Optional legacy 2-arg form: \jobsection{company}{role}
  local c2, r2 = t:match("^\\jobsection%s*{(.-)}%s*{(.-)}%s*$")
  if c2 then
    return jobsection_blocks(c2, "", r2)
  end

  -- \projectsection[tech]{title}{desc}
  local tech, title, desc =
    t:match("^\\projectsection%s*%[(.-)%]%s*{(.-)}%s*{(.-)}%s*$")
  if title then
    return projectsection_blocks(tech, title, desc)
  end

  -- \projectsection{title}{desc}
  local title2, desc2 = t:match("^\\projectsection%s*{(.-)}%s*{(.-)}%s*$")
  if title2 then
    return projectsection_blocks(nil, title2, desc2)
  end

  return nil
end