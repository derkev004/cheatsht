\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsht}[2016/06/25 cheatsht]

\ProcessOptions\relax

\LoadClass[10pt]{scrartcl}

\RequirePackage{multicol}
\RequirePackage[landscape]{geometry}
\RequirePackage{hyperref}
\RequirePackage{fontspec}
\RequirePackage{etoolbox}

\geometry{top=0.5cm,left=1cm,right=1cm,bottom=1cm}

\pagestyle{empty}
\newcommand{\newcheat}
{
  \end{multicols}\newpage\raggedright\footnotesize\begin{multicols}{3}
}
\renewcommand{\section}{\@startsection{section}{1}{0mm}
                                {-1ex plus -.5ex minus -.2ex}
                                {0.5ex plus .2ex}
                                {\normalfont\large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}
                                {-1explus -.5ex minus -.2ex}
                                {0.5ex plus .2ex}
                                {\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}
                                {-1ex plus -.5ex minus -.2ex}
                                {1ex plus .2ex}%
                                {\normalfont\small\bfseries}}
\renewcommand{\title}[1]
{
  \begin{center}
    \Large{\textbf{#1}} \\
  \end{center}
}
\newcommand{\link}[1]{\textcolor{blue}{\underline{\href{#1}{#1}}}}
\newcommand{\signature}[1]
{
  \begingroup\fontsize{5}{4}\selectfont
    \begin{tabular}{@{}l@{}}
      \hline
      #1
    \end{tabular}
  \endgroup
}

\setcounter{secnumdepth}{0}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt plus 0.5ex}

% multicol parameters
% These lengths are set only within the two main columns
%\setlength{\columnseprule}{0.25pt}
\setlength{\premulticols}{1pt}
\setlength{\postmulticols}{1pt}
\setlength{\multicolsep}{1pt}
\setlength{\columnsep}{4pt}

\AfterEndPreamble{\raggedright\footnotesize\begin{multicols}{3}}
\AtEndDocument{\end{multicols}}
\endinput
