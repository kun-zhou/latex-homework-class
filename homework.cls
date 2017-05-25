% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2017/05/03 v0.1 by Kun Zhou at Skidmore College Wiecking Hall]

% Load Class

\LoadClass{article}

% Loading Packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[osf]{mathpazo}

\RequirePackage{amsmath}
\RequirePackage{eulervm}
\RequirePackage{hyperref}


% Define Title
\renewcommand\author[1]{\renewcommand\@author{#1}}
\renewcommand\title[1]{\renewcommand\@title{#1}}
\newcommand\subject[1]{\newcommand\@subject{#1}}

\renewcommand\maketitle{%
	\hbox to \hsize{\large\hss \textsc{\@title} \hss }%
	\vskip-0.5\baselineskip\noindent\rule{\hsize}{0.4pt}%
	\vskip-0.3\baselineskip\hbox to \hsize{\@author \hss \textit{\@subject}}%
	\vskip\baselineskip%
}

% Define Custom Heading(s)
\newcounter{problem}
\newcommand{\problem}[1][]{\stepcounter{problem}\vskip\baselineskip\pdfbookmark[0]{Problem \theproblem}{\theproblem}%
	\noindent\textbf{Problem \theproblem.}\enskip}


% Define Custom Environments
	% Answer environment
\newenvironment{answer}[1][]{\vskip -0.5\baselineskip% Enter newline
							 \hbox to \hsize{\hss\rule{0.7\hsize}{0.1pt}}\vskip-0.5\baselineskip% Typeset rule
							 \hbox to \hsize{\hss \small\textsc{Answer #1}\enskip}} % Type set "Answer" and finish up
							{
							\par\vskip -0.5\baselineskip\noindent\hbox to \hsize{\hss\rule{\hsize}{0.1pt}}}
	% Notes environment
\newenvironment{note}[1][]{\par\noindent\textsc{#1}\slshape}{\par}

% Custom Command(s)
	% Add support for signature field
\newcommand\sig{\vskip\baselineskip \hbox to \hsize{\hss\rule{1.7in}{0.2pt}}}
	% Forward and backward implications
\newcommand\forward[1][1]{\par\noindent #1. $\implies$: }
\newcommand\backward[1][2]{\par\noindent #1. $\impliedby$: }