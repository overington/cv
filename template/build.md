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

@import "cover_letter/parts/header_markdown.md"

I am a third year undergraduate student in Physics at Queen Mary University of London, with a passion for creativity, science and software engineering.  I have a diverse history of experience with a background in art, where I have been an exhibiting artist working collaboratively with dancers exploring the relationship between drawing, motion and dance.  I have also been a freelance developer, leading creative front-end web development projects, graphic design. Recently I was an intern at a space engineering company, in the earth observation team, researching machine learning and computer vision, as well as software engineering intern for a fintech startup, and .

@import "CV/parts/objective.md"

<!--  COVER LETTER-->
@import "cover_letter/parts/base.md"

<!--  CV -->
@import "CV/parts/skills.md"
@import "CV/parts/dev.md"
@import "CV/parts/teaching.md"
@import "CV/parts/education.md"
@import "CV/parts/references.md"
