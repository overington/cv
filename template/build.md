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

I am a second year undergraduate student in Theoretical Physics at Queen Mary, University of London, with a passion for creativity, science and software engineering.  I have a diverse history of experience with a background in art, where I have been an exhibiting artist working collaboratively with dancers exploring the relationship between drawing, motion and dance.  I have also been a freelance web developer, leading creative front-end web development projects, graphic design, and most recently a software engineering intern.

@import "CV/parts/objective.md"

<!--  COVER LETTER-->
@import "cover_letter/base.md"

<!--  CV -->
@import "CV/parts/skills.md"
@import "CV/parts/webdev.md"
@import "CV/parts/teaching.md"
@import "CV/parts/education.md"
