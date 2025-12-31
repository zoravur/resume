% Intro Options
\ProvidesClass{hieudo-build}[2016/07/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
%   \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1cm, vmargin=1cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage[fixed]{fontawesome5}
\pagenumbering{gobble}
\usepackage{datetime2}
\usepackage{setspace}
\usepackage{eso-pic}
\usepackage{svg}
% \usepackage{roboto}
\usepackage[default,opentype]{sourcesanspro}


% Color definitions
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{0000ee}
\definecolor{subheadings}{HTML}{000000}
\definecolor{myblue}{HTML}{000000}
\definecolor{myyellow}{HTML}{0000EE}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/NiveauGrotesk/, Scale=1.00, BoldFont={Lato-Regular.ttf}]{Lato-Regular.ttf}

\newcommand{\custombold}[1]{\fontspec[Path = fonts/NiveauGrotesk/]{Lato-Light.ttf}\selectfont #1 \normalfont
}
\linespread{1.1}

% Date format
\DTMnewdatestyle{mylastupdate}{%
  \renewcommand*{\DTMdisplaydate}[4]{\DTMtwodigits{##2}.\DTMtwodigits{##3}.##1}\color{date}\fontspec[Path = fonts/NiveauGrotesk/]{Lato-Light.ttf}\fontsize{10pt}{10pt}\selectfont%
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

% Name command
\newcommand{\namesection}[2]{
    % \hspace{-1.6em}
    % \begin{minipage}{\textwidth}
	{\fontspec[Path = fonts/NiveauGrotesk/]{Lato-Bold.ttf}\fontsize{40pt}{0cm}\selectfont #1} \\
	{\fontsize{16pt}{0cm}\selectfont \textsc{#2}}
	
	
% 	\end{minipage}
}

% Headings command
\titleformat{\section}{
\color{headings}
\fontspec[Path = fonts/NiveauGrotesk/]{Lato-Bold.ttf}
\fontsize{18pt}{24pt}
\selectfont\uppercase}{}{}{}


\newcommand{\subsectionstyle}{
\fontspec[Path = fonts/NiveauGrotesk/]{Lato-Bold.ttf}
\fontsize{11pt}{13pt}\selectfont
}

% Subeadings command
\titleformat{\subsection}{\subsectionstyle}{}{0em}{}
\titlespacing{\section}{0pt}{0pt}{0em}

% Jobtitle command
\newcommand{\workplace}[2]{{ \subsectionstyle #1  \hfill \normalfont #2}}
% Positions command
% \newcommand{\position}[2]{{\color{subheadings}\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont \hfill #2 }}


\newcommand{\runsubsection}[1]{%
  {\subsectionstyle{\color{myblue} #1}%
  \fontspec[Path=fonts/NiveauGrotesk/]{Lato-Regular.ttf}\fontsize{11pt}{13pt}\selectfont\bfseries\normalfont}%
}


% Descriptors command
\newcommand{\descript}[1]{%\hspace{-0.5em}
{\color{subheadings} \sourcesanspro\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}
}

% Location, but inline
\newcommand{\skill}[2]{
  \setlength{\baselineskip}{14pt}
  {\subsectionstyle\fontsize{10.3pt}{13pt}\selectfont #1}
  \:|\:
  {\sourcesanspro\fontsize{11pt}{13pt}\selectfont #2}
}

% Colored location command
\newcommand{\mylocation}[1]{%\hspace{-0.5em}
{\color{myyellow}\fontspec[Path = fonts/Be_Vietnam_Pro/]{BeVietnamPro-Italic.ttf}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}
}


% Bullet Lists with fewer gaps command
\newenvironment{tightemize}
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% Two columns
\newcommand{\dualcolumn}[2]{
    \begin{minipage}[t]{0.49\textwidth}
        #1
    \end{minipage}\hfill
    \begin{minipage}[t]{0.49\textwidth}
        #2
    \end{minipage}
}

\newcommand{\sectionsep}[0]{\vspace{0.4em}}

% \newcommand{\siteicon}{\raisebox{-0.1em}{\includegraphics[height=1em]{site-logo.png}}}