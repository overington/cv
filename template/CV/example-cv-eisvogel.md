---
title: \huge \scshape{Samuel Overington}
date: |
      \begin{tabular}{rl}
        \faicon{mail-reply} & s.c.overington@gmail.com \\
        \faicon{flash} & samueloverington.com \\
        \faicon{linkedin} & linkedin.com/in/scoverington/ \\
        \faicon{github} & github.com/oh-/ \\
        \faicon{mobile} & 07939949766 \\
      \end{tabular}
geometry: left=1.5cm, top=2.5cm, right=1.5cm
output:
  pdf_document:
    pandoc_args: ["--template=template/eisvogel/eisvogel.tex", "--listings"]
    path: "/output/cv.2020-e.samueloverington.pdf"
    toc: false
header-includes:
  - \usepackage{fontawesome}
  - \usepackage{tikz}
---
\pagenumbering{gobble}
\

@import "/template/CV/parts/objective.md"

@import "/template/CV/parts/skills.md"

@import "/template/CV/parts/dev.md"

@import "/template/CV/parts/education.md"


<!-- ## References available on request -->

<!-- import "/template/CV/parts/references.md" -->
