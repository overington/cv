local function clean_tex(s)
  s = s:gsub("\\\\%[.-%]", " ")   -- remove manual spacing breaks like \\[-0.5em]
  s = s:gsub("\\\\", " ")         -- remaining line breaks
  s = s:gsub("\\&", "&")
  s = s:gsub("%s+", " ")
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

local function jobsection_blocks(company, dates, role)
  company = clean_tex(company)
  dates = clean_tex(dates)
  role = clean_tex(role)

  return {
    pandoc.Para({
      pandoc.Strong(company),
      pandoc.Space(),
      pandoc.Str("(" .. dates .. ")")
    }),
    pandoc.Para({ pandoc.Emph(role) })
  }
end

local function projectsection_blocks(tech, title, desc)
  title = clean_tex(title)
  desc = clean_tex(desc)

  local lead = { pandoc.Strong(title) }
  if tech and tech ~= "" then
    tech = clean_tex(tech)
    table.insert(lead, pandoc.Space())
    table.insert(lead, pandoc.Emph("[" .. tech .. "]"))
  end

  return {
    pandoc.Para(lead),
    pandoc.Para({ pandoc.Str(desc) })
  }
end

function RawBlock(el)
  if el.format ~= "tex" and el.format ~= "latex" then
    return nil
  end

  local t = el.text

  -- Drop macro definitions from README output
  if t:match("^\\newcommand%s*{\\jobsection}") or
     t:match("^\\NewDocumentCommand%s*{\\projectsection}") or
     t:match("^\\NewDocumentCommand%s*{\\foo}") then
    return {}
  end

  local a,b,c = t:match("^\\jobsection%s*{(.-)}%s*{(.-)}%s*{(.-)}%s*$")
  if a then
    return jobsection_blocks(a,b,c)
  end

  local tech,title,desc = t:match("^\\projectsection%s*%[(.-)%]%s*{(.-)}%s*{(.-)}%s*$")
  if title then
    return projectsection_blocks(tech,title,desc)
  end

  local title2,desc2 = t:match("^\\projectsection%s*{(.-)}%s*{(.-)}%s*$")
  if title2 then
    return projectsection_blocks(nil,title2,desc2)
  end

  return nil
end