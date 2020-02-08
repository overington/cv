---
fontfamily: crimson
fontsize: 12pt
linestretch: 1.25
geometry: left=2.5cm, top=1.5cm, right=2.5cm
output:
  pdf_document:
    includes:
      before_body: parts/header.md
    path: "./cv.samueloverington.pdf"
    toc: false
header-includes:
  - \usepackage{fontawesome}
---

@import "parts/objective.md"

@import "parts/skills.md"

@import "parts/dev.md"
<!--
@import "parts/teaching.md"
 -->
@import "parts/education.md"
<!-- Academic references -->
@import "parts/references.md"
