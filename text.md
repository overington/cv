---
title: \huge \scshape{Samuel Overington}
date: |
      \begin{tabular}{rl}
        \faicon{mail-reply} & s.c.overington@gmail.com \\
        \faicon{flash} & samueloverington.com \\
        \faicon{github} & github.com/oh-/ \\ \\
      \end{tabular}
geometry: left=1.5cm, top=2.5cm, right=1.5cm
output:
  pdf_document:
    pandoc_args: ["--template=template/eisvogel/eisvogel.tex", "--listings"]
    path: "test.pdf"
    toc: false
header-includes:
  - \usepackage{fontawesome}
  - \usepackage{tikz}

---

\hspace{0.1\textheight plus0.1\textheight }

# Letter Head


\newcommand{\Fbox}[1]{\fbox{\strut#1}}

\newcommand{\boxd}[1]{
  \setlength{\fboxsep}{1pt}% Just for this example
  \setlength{\parindent}{0pt}% Just for this example
  \foreach \x in #1 {\Fbox{\x} }
}

@import "/template/CV/parts/objective.md"


\begin{minipage}[t][\textheight][t]{0.35\textwidth}
\def\myskills{ Python,C++,C\#,TensorFlow,Machine Learning,Deep Learning,algorithms,Django,DRF,Flask,Docker,Bash,Zsh,JavaScript,HTML,CSS,SASS,Vim,Git,PHP,WordPress,Jupyter,NumPy,SciPy,Matplotlib,LaTeX}
\boxd{\myskills}
\end{minipage}


"Conjugate gradient", "BFGS", and "L-BFGS" are more sophisticated, faster ways to optimize that can be used instead of gradient descent. We suggest that you should not write these more sophisticated algorithms yourself (unless you are an expert in numerical computing) but use the libraries instead, as they're already tested and highly optimized. Octave provides them.

We first need to provide a function that evaluates the following two functions for a given input value :


\pagebreak

# Letter Head

"Conjugate gradient", "BFGS", and "L-BFGS" are more sophisticated, faster ways to optimize that can be used instead of gradient descent. We suggest that you should not write these more sophisticated algorithms yourself (unless you are an expert in numerical computing) but use the libraries instead, as they're already tested and highly optimized. Octave provides them.

We first need to provide a function that evaluates the following two functions for a given input value :
