---
fontfamily: crimson
fontsize: 12pt
linestretch: 1.25
geometry: left=2.5cm, top=1.5cm, right=2.5cm
output:
  pdf_document:
    includes:
      before_body: ../template/CV/parts/header.md
    path: "/output/cv.samueloverington.pdf"
    toc: false
header-includes:
  - \usepackage{fontawesome}
---

@import "/template/CV/parts/objective.md"

@import "/template/CV/parts/skills.md"

@import "/template/CV/parts/dev.md"
<!--
@import "/template/CV/parts/teaching.md"
 -->
@import "/template/CV/parts/education.md"
<!-- Academic references -->
@import "/template/CV/parts/references.md"
