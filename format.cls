\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{format}[2011/07/01]
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

% Classes of documents; default view is book
\newif\if@book
\newif\if@article
\newif\if@slides
\DeclareOption{book}{%
	\@booktrue
	\ExecuteOptions{twoside}
}
\DeclareOption{article}{%
	\@articletrue
	\ExecuteOptions{oneside}
}
\DeclareOption{slides}{%
	\@slidestrue
	\PassOptionsToClass{landscape}{memoir}
	\ExecuteOptions{a5paper,16pt,oneside}
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

\ExecuteOptions{16pt,a4paper,book,onecolumn}
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
\if@book
	\setbinding{9mm}
\else % article, slides
	\setbinding{-9mm}
\fi

\if@slides
	\setlrmarginsandblock{0pt}{0pt}{*} %edge spine ratio
	\setlength\spinemargin{0.5\spinemargin} %cut the spine margin to even the left and right margins
	\setulmarginsandblock{\spinemargin}{\@sizesmall}{*} %top bottom ratio
	\setheadfoot{0pt}{0pt} % headheight footskip
	\setheaderspaces{*}{0pt}{*} % headdrop headsep ratio
\else % book, article
	\setlxvchars[\normalsize]
	\settypeblocksize{*}{\lxvchars}{1.414}
	\setulmargins{*}{*}{1.414}
	\setlrmargins{*}{*}{1.414}
\fi

\checkandfixthelayout[lines]

% Headers and footers
\nouppercaseheads

\copypagestyle{slide}{headings} %copy orig
\makeoddhead{slide}{}{}{} %style left center right
% \makeheadrule{slide}{\textwidth}{\normalrulethickness} %style length thickness
\makeoddfoot{slide}{\small\thedate}{\small\theauthor}{\small\thepage} %style left center right
% \makefootrule{slide}{\textwidth}{\normalrulethickness}{0pt} %style length thickness skip

\if@slides
	\aliaspagestyle{plain}{slide} %alias original
	\pagestyle{plain}
\fi

% Title
\renewcommand\@maketitle{
	\if@article
		\chapter{\@title}
	\else \if@slides
		\thispagestyle{empty}
		\begin{center}
			~
			\vfill
			\LARGE
			\@title
			\vfill
			\normalsize
			~
			\vfill
			\@author\\
			\@date
		\end{center}
		\clearpage
	\else % book
		\thispagestyle{empty}
		\vspace{-\parskip}
		\@author \hfill \@date
		\vspace{2pt}
		\hrule
		\begin{center}
			\vspace{-\parskip}
			\vspace{2pt}
			\LARGE
			\@title
		\end{center}
	\fi
}

% Chapter styles
\makechapterstyle{format}{%
	\renewcommand\chapterheadstart{\vspace{-\parskip}}
	\renewcommand{\chapnamefont}{\normalsize}
	\renewcommand{\chapnumfont}{\normalsize}
	\setlength\midchapskip{2pt}
	\renewcommand{\chaptitlefont}{\LARGE}
	\renewcommand\printchapternonum{\vphantom{\chapnamefont Chapter \chapnumfont 2}\vspace{2pt}}
	\renewcommand{\printchaptertitle}[1]{%
		\hrule
		\vspace{2pt}
		\centering
		\chaptitlefont
		##1
	}
}
\makechapterstyle{article}{%
	\chapterstyle{format}
	\renewcommand\printchaptername{Nathan Kerr}
	\renewcommand\printchapternum{\hfill \@date}
	\renewcommand\printchapternonum{Nathan Kerr\hfill \@date}
}
\makechapterstyle{slide}{%
	\chapterstyle{crosshead}
	\renewcommand{\chapnamefont}{\LARGE}
	\renewcommand{\chapnumfont}{\LARGE}
	\renewcommand{\chaptitlefont}{\LARGE}
}

\if@article
	\chapterstyle{article}
\else \if@slides
	\chapterstyle{slide}
\else %book
	\chapterstyle{format}
\fi
\fi

% Section style
\setbeforesecskip{\@sizelarge}
\setsecindent{0pt}
\if@slides
	\setsecheadstyle{\clearpage\Large}
\else
	\setsecheadstyle{\Large}
\fi
\setaftersecskip{1pt}

% Subsection style
\setbeforesubsecskip{\@sizenormal}
\setsubsecindent{0pt}
\if@slides
	\setsubsecheadstyle{\clearpage\large}
\else
	\setsubsecheadstyle{\large}
\fi
\setaftersubsecskip{1pt}

% Subsubsection style
\setbeforesubsubsecskip{1pt}
\setsubsecindent{0pt}
\if@slides
	\setsubsubsecheadstyle{\clearpage\normalsize}
\else
	\setsubsubsecheadstyle{\normalsize}
\fi
\setaftersubsubsecskip{1pt}

% Paragraph style
\setbeforeparaskip{1pt}
\setparaindent{0pt}
\if@slides
	\setparaheadstyle{\clearpage\bfseries}
\else
	\setparaheadstyle{\bfseries}
\fi
\setafterparaskip{-1em}

% Subparagraph style
\setbeforesubparaskip{1pt}
\setsubparaindent{\parindent}
\if@slides
	\setsubparaheadstyle{\clearpage\bfseries}
\else
	\setsubparaheadstyle{\bfseries}
\fi
\setaftersubparaskip{-1em}
