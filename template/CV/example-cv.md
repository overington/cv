---
fontsize: 11pt
linestretch: 1.25
geometry: left=1.5cm, top=1.5cm, right=1.5cm, bottom=2cm
output:
  pdf_document:
    path: "/output/cv.2020-t.samueloverington.pdf"
    toc: false
header-includes:
  - \usepackage{fontawesome}
  - \usepackage[T1]{fontenc}
  - \usepackage[sfdefault]{FiraSans}
---


\let\oldnormalfont\normalfont
\def\normalfont{\oldnormalfont\mdseries}

\begin{minipage}[t]{0.6\textwidth}
  \Huge \scshape{Samuel Overington}
\end{minipage}
\begin{minipage}[b]{0.4\textwidth}
  \begin{flushright}
    \begin{tabular}{rl}
      \faicon{mail-reply} & s.c.overington@gmail.com \\
      \faicon{flash} & samueloverington.com \\
      \faicon{github} & github.com/overington/ \\
      \faicon{linkedin} & linkedin.com/in/scoverington/ \\
    \end{tabular}
  \end{flushright}
\end{minipage}
\noindent\rule{\textwidth}{0.4pt}

@import "/template/CV/parts/objective.md"

@import "/template/CV/parts/skills.md"

@import "/template/CV/parts/dev.md"
<!--
@import "/template/CV/parts/teaching.md"
 -->
@import "/template/CV/parts/education.md"

\vspace{1cm}

#### References available on request

<!-- import "/template/CV/parts/references.md" -->
