---
title: \huge \scshape{Samuel Overington}
date: |
      \begin{tabular}{rl}
        \faicon{mail-reply} & s.c.overington@gmail.com \\
        \faicon{linkedin} & linkedin.com/in/scoverington/ \\
        \faicon{github} & github.com/overington/ \\
        \faicon{mobile} & 07939949766 \\ \\
      \end{tabular}
geometry: left=1.5cm, top=2cm, right=1.5cm
output:
  pdf_document:
    pandoc_args: ["--template=template/eisvogel/eisvogel.tex", "--listings"]
    path: "/output/SamuelOveringtonCV2022.pdf"
    toc: false
header-includes:
  - \usepackage{fontawesome}
  - \usepackage{tikz}
  - \usepackage{multicol}
  - \setlength{\columnsep}{1cm}
  - \setlength{\columnseprule}{1pt}
---
\pagenumbering{gobble}
\

@import "/src/CV/parts/top_aim_skills_edu.md"

@import "/src/CV/parts/dev.md"



<!-- ## References available on request -->

<!-- import "/template/CV/parts/references.md" -->
