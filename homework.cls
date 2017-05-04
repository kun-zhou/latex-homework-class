

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2017/05/03 v0.1 by Kun Zhou at Skidmore College Wiecking Hall]

% Declaring options
\usepackage{}

% Load Class
\LoadClass[12pt]{article}

% Loading packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[osf]{mathpazo}
\RequirePackage{eulervm}

% Define Structures
\newcounter{problem}
\setcounter{problem}{1}
\newcommand{\problem}{\par\vskip\baselineskip\noindent\textbf{Problem \theproblem.}\enskip\stepcounter{problem}}

%Define Title
\renewcommand\author[1]{\renewcommand\@author{#1}}
\renewcommand\title[1]{\renewcommand\@title{#1}}
\newcommand\subject[1]{\newcommand\@subject{#1}}

\renewcommand\maketitle{%
	\hbox to \hsize{\large\hss \textsc{\@title} \hss }%
	\vskip-0.5\baselineskip\noindent\rule{\textwidth}{0.4pt}%
	\vskip-0.3\baselineskip\hbox to \hsize{\@author \hss \textit{\@subject}}%
	\vskip\baselineskip%
}

\newenvironment{answer}[1][]{\par\vskip -0.5\baselineskip\hbox to \hsize{\hss\rule{0.7\textwidth}{0.1pt}}\vskip-0.5\baselineskip\par\hbox to \hsize{\hss \small\textsc{Answer #1}\enskip}}{%\hfill $\blacksquare$
\par\vskip -0.5\baselineskip\noindent\hbox to \hsize{\hss\rule{\textwidth}{0.1pt}}}
