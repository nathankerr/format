\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{format}[2011/05/04]
% Growth based on http://en.wikipedia.org/wiki/Preferred_number R10 series
% one to two alphabets = 18.7pt - 9.35pt
% basesizes in series: 10pt, 12.59pt, 15.85pt
% Numbers increased by a mulitple of the 10th root of 10 (1.26) and then rounded
% Lineheight is 1.26*fontsize
% skips are 1/3 of vspace remaining for heading
% (2*\baselineheight - lineheight)/3
\newcommand\@sizeminiscule{}
\newcommand\@sizetiny{}
\newcommand\@sizescriptsize{}
\newcommand\@sizefootnotesize{}
\newcommand\@sizesmall{}
\newcommand\@sizenormal{}
\newcommand\@sizelarge{}
\newcommand\@sizeLarge{}
\newcommand\@sizeLARGE{}
\newcommand\@sizehuge{}
\newcommand\@sizeHuge{}
\newcommand\@sizeHUGE{}
\newcommand\@sizeHUGER{}
\DeclareOption{16pt}{%
	\renewcommand\@sizeminiscule{5.01pt}
	\renewcommand\@sizetiny{6.31}
	\renewcommand\@sizescriptsize{7.94pt}
	\renewcommand\@sizefootnotesize{10pt}
	\renewcommand\@sizesmall{12.59pt}
	\renewcommand\@sizenormal{15.85pt} % 10*10^(2/10)
	\renewcommand\@sizelarge{19.95pt}
	\renewcommand\@sizeLarge{25.12pt}
	\renewcommand\@sizeLARGE{31.62pt}
	\renewcommand\@sizehuge{39.81pt}
	\renewcommand\@sizeHuge{50.12pt}
	\renewcommand\@sizeHUGE{63.10pt}
	\renewcommand\@sizeHUGER{79.43pt}
}
\DeclareOption{13pt}{%
	\renewcommand\@sizeminiscule{3.98pt}
	\renewcommand\@sizetiny{5.01pt}
	\renewcommand\@sizescriptsize{6.31pt}
	\renewcommand\@sizefootnotesize{7.94pt}
	\renewcommand\@sizesmall{10pt}
	\renewcommand\@sizenormal{12.59pt} %10*10^(1/10)
	\renewcommand\@sizelarge{15.85pt}
	\renewcommand\@sizeLarge{19.95pt}
	\renewcommand\@sizeLARGE{25.12pt}
	\renewcommand\@sizehuge{31.62pt}
	\renewcommand\@sizeHuge{39.81pt}
	\renewcommand\@sizeHUGE{50.12pt}
	\renewcommand\@sizeHUGER{63.10pt}
}
\DeclareOption{10pt}{%
	\renewcommand\@sizeminiscule{3.16pt}
	\renewcommand\@sizetiny{3.98pt}
	\renewcommand\@sizescriptsize{5.01pt}
	\renewcommand\@sizefootnotesize{6.31pt}
	\renewcommand\@sizesmall{7.94pt}
	\renewcommand\@sizenormal{10pt} % 10*10^(0/10)
	\renewcommand\@sizelarge{12.59pt}
	\renewcommand\@sizeLarge{15.85pt}
	\renewcommand\@sizeLARGE{19.95pt}
	\renewcommand\@sizehuge{25.12pt}
	\renewcommand\@sizeHuge{31.62pt}
	\renewcommand\@sizeHUGE{39.81pt}
	\renewcommand\@sizeHUGER{50.12pt}
}

% Paper sizes
\DeclareOption{a4paper}{%
	\PassOptionsToClass{a4paper}{memoir}
	\ExecuteOptions{16pt}
}
\DeclareOption{a5paper}{%
	\PassOptionsToClass{a5paper}{memoir}
	\ExecuteOptions{13pt}
}
\DeclareOption{letterpaper}{%
	\PassOptionsToClass{letterpaper}{memoir}
	\ExecuteOptions{16pt}
}
\DeclareOption{ustradepaper}{%
	\PassOptionsToClass{ebook}{memoir}
	\ExecuteOptions{13pt}
}

% Page sidedness
\DeclareOption{oneside}{%
	\PassOptionsToClass{oneside}{memoir}
}
\DeclareOption{twoside}{%
	\PassOptionsToClass{twoside}{memoir}
}

% Columns
\DeclareOption{onecolumn}{%
	\PassOptionsToClass{onecolumn}{memoir}
}
\DeclareOption{twocolumn}{%
	\PassOptionsToClass{twocolumn}{memoir}
}

% Draft
\DeclareOption{draft}{%
	\PassOptionsToClass{draft}{memoir}
	\PassOptionsToClass{showtrims}{memoir}
}

\ExecuteOptions{16pt,a4paper,twoside,onecolumn}
\ProcessOptions
\LoadClass[openright]{memoir}

% Packages
\RequirePackage{url}

% Fonts and Titles
\usepackage{fontspec}
\setmainfont[Ligatures=TeX]{Georgia}
\setlength\parindent{0pt}
\setlength\parskip{\@sizefootnotesize}

% Font Sizes
\renewcommand\miniscule{
	\fontsize{\@sizeminiscule}{\@sizetiny}
	\selectfont
}
\renewcommand\tiny{
	\fontsize{\@sizetiny}{\@sizescriptsize}
	\selectfont
}
\renewcommand\scriptsize{
	\fontsize{\@sizescriptsize}{\@sizefootnotesize}
	\selectfont
}
\renewcommand\footnotesize{
	\fontsize{\@sizefootnotesize}{\@sizesmall}
	\selectfont
}
\renewcommand\small{
	\fontsize{\@sizesmall}{\@sizenormal}
	\selectfont
}
\renewcommand\normalsize{
	\fontsize{\@sizenormal}{\@sizelarge}
	\selectfont
}
\renewcommand\large{
	\fontsize{\@sizelarge}{\@sizeLarge}
	\selectfont
}
\renewcommand\Large{
	\fontsize{\@sizeLarge}{\@sizeLARGE}
	\selectfont
}
\renewcommand\LARGE{
	\fontsize{\@sizeLARGE}{\@sizehuge}
	\selectfont
}
\renewcommand\huge{
	\fontsize{\@sizehuge}{\@sizeHuge}
	\selectfont
}
\renewcommand\Huge{
	\fontsize{\@sizeHuge}{\@sizeHUGE}
	\selectfont
}
\renewcommand\HUGE{
	\fontsize{\@sizeHUGE}{\@sizeHUGER}
	\selectfont
}

% Page Layout
%\setbinding{0pt}
%\setlrmarginsandblock{0.05\paperwidth}{0.05\paperwidth}{*} %edge spine ratio
%\setulmarginsandblock{\@sizeHuge}{\@sizeHuge}{*} %top bottom ratio
%\setcolsepandrule{0.025\paperwidth}{0pt} % space_width ruler_width
%\setheadfoot{\@sizeLarge}{\@sizeLarge} % headheight footskip
%\setheaderspaces{*}{\baselineskip}{*} % headdrop headsep ratio

%\setbinding{0pt}
%\setlrmarginsandblock{0.05\paperwidth}{0.05\paperwidth}{*} %edge spine ratio
%\setulmarginsandblock{\@sizeHuge}{\@sizeHuge}{*} %top bottom ratio
%\setcolsepandrule{0.025\paperwidth}{0pt} % space_width ruler_width
%\setheadfoot{\@sizeLarge}{\@sizeLarge} % headheight footskip
%\setheaderspaces{*}{\baselineskip}{*} % headdrop headsep ratio

% GM with 10pt for a5
%\setlxvchars[\normalsize]
%\settypeblocksize{*}{\lxvchars}{1.618}
%\setulmargins{50pt}{*}{1.0}
%\setlrmargins{*}{*}{1.618}

% 1.26 with 13pt for a5
\setbinding{9mm}
\setlxvchars[\normalsize]
\settypeblocksize{*}{\lxvchars}{1.414}
\setulmargins{*}{*}{1.414}
\setlrmargins{*}{*}{1.414}

\checkandfixthelayout[lines]
% \checkthelayout

% Headers and footers
\nouppercaseheads

% Title
\renewcommand\@maketitle{
	\thispagestyle{empty}
	\vspace{-\parskip}
	\@author \hfill \@date
	\vspace{2pt}
	\hrule
	\begin{center}
		% {
			\vspace{-\parskip}
			\vspace{2pt}
			\LARGE
			\@title	
		% }
	\end{center}
}

% Chapter style
\makechapterstyle{format}{%
	\renewcommand\chapterheadstart{\vspace{-\parskip}}
	\renewcommand{\chapnamefont}{\normalsize}
	\renewcommand{\chapnumfont}{\normalsize}
	\setlength\midchapskip{2pt}
	\renewcommand{\chaptitlefont}{\LARGE}
	\renewcommand\printchapternonum{\vphantom{\chapnamefont Chapter \chapnumfont 2}\vspace{2pt}}
	\renewcommand{\printchaptertitle}[1]{%
		\hrule
		\vspace{-\parskip}
		\vspace{2pt}
		\centering
		\chaptitlefont
		##1
	}
}
\chapterstyle{format}

\makechapterstyle{single}{%
	\chapterstyle{format}
	\renewcommand\printchaptername{Nathan Kerr}
	\renewcommand\printchapternum{\hfill \@date}
	\renewcommand\printchapternonum{Nathan Kerr\hfill \@date}
}

% Section style
\setbeforesecskip{\@sizelarge}
\setsecindent{0pt}
\setsecheadstyle{\Large}
\setaftersecskip{1pt}

% Subsection style
\setbeforesubsecskip{\@sizenormal}
\setsubsecindent{0pt}
\setsubsecheadstyle{\large}
\setaftersubsecskip{1pt}

% Subsubsection style
\setbeforesubsubsecskip{1pt}
\setsubsecindent{0pt}
\setsubsubsecheadstyle{\normalsize}
\setaftersubsubsecskip{1pt}

% Paragraph style
\setbeforeparaskip{1pt}
\setparaindent{0pt}
\setparaheadstyle{\bfseries}
\setafterparaskip{-1em}

% Subparagraph style
\setbeforesubparaskip{1pt}
\setsubparaindent{\parindent}
\setsubparaheadstyle{\bfseries}
\setaftersubparaskip{-1em}
