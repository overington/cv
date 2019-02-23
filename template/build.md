---
fontfamily: crimson
fontsize: 12pt
linestretch: 1.3
geometry: left=2.5cm, top=1.5cm, right=2.5cm
output:
  custom_document:
    path: "../README.md"
    includes:
header-includes:
  - \usepackage{fontawesome}

---
@import "cover_letter/header_markdown.md"

@import "CV/parts/objective.md"

<!--  COVER LETTER-->
@import "cover_letter/base.md"

<!--  CV -->
@import "CV/parts/skills.md"
@import "CV/parts/webdev.md"
@import "CV/parts/teaching.md"
@import "CV/parts/education.md"
