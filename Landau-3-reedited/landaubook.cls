\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{landaubook}

\let\@xp=\expandafter
\let\@nx=\noexpand

\let\runge@webcoloropt=0
\let\runge@fontopt=0


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{book}

% require packages

\RequirePackage{autofancyhdr}
\RequirePackage{graphicx}
\RequirePackage{chngcntr}
\RequirePackage{amsmath}
\RequirePackage{bm}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage[colorlinks=true]{hyperref}
\RequirePackage{upgreek}
\RequirePackage{mathrsfs}
\RequirePackage{amsxtra}
\RequirePackage[all,pdf]{xy}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{titlesec}
\RequirePackage{tikz}
\RequirePackage{wrapfig}
\RequirePackage{caption}
% note: 使用 unicode-math 替换数学字体宏包
% note: 使用 imakeidx 宏包创建 index
% note: 使用 wrapfig 绘制绕排
% note: 使用 geometry 调节版式
% note: 使用 caption 调节浮动体样式
% note: 使用 fontspec 管理字体
% note: 使用 pgf/tikz 而不是 xy 绘制图片


% counter
\counterwithout{section}{chapter}
\numberwithin{equation}{section}
\renewcommand\thechapter{\Roman{chapter}}

% titleset
%%% section
\titleformat{\section}[hang]
  {\normalfont\bfseries\large\filright}
  {\S~\thesection.}
  {0.5em}   % body and label
  {}% before body
  []
\titlespacing{\section}
  {0pt}   % left
  {0.3in} % before
  {0.2in} % after
%%% chapter
% TODO: frontmatter 和 mainmatter 样式不同
\titleformat{\chapter}[display]
  {\normalfont\Large}
  {\filright\MakeUppercase{\chaptertitlename}\quad\thechapter}
  {0.3in}             % body and label
  {\titlerule[2pt]\vskip0.1in\bfseries\filright}% before body
  []
\titlespacing{\chapter}
  {0pt}   % left
  {0.0in} % before
  {0.7in} % after

% footnote
\makeatletter
\renewcommand{\@makefnmark}{\hbox{\@textsuperscript{\normalfont\@thefnmark})\hspace{0.3em}}}
\makeatletter

% fancyhdr
\fancypagestyle{mainstyle}{%
  \renewcommand{\headrulewidth}{1pt} %
  \renewcommand{\chaptermark}[1]{\markboth{##1}{}}%
  \renewcommand{\sectionmark}[1]{\markright{##1}}%
  \fancyhf{} % clear all
  \fancyhead[CO]{\MakeUppercase{%
    \scriptsize\leftmark}}%
  \fancyhead[CE]{\MakeUppercase{\scriptsize\rightmark}}%
  \fancyhead[LE,RO]{\thepage}%
  \fancyhead[LO]{\scriptsize Chap.~\thechapter}
  \fancyhead[RE]{\S~\thesection}
}
\fancypagestyle{prestyle}{%
  \renewcommand{\headrulewidth}{1pt} %
  \renewcommand{\chaptermark}[1]{\markboth{##1}{}}%
  \renewcommand{\sectionmark}[1]{\markright{##1}}%
  \fancyhf{} % clear all
  \fancyhead[CE,CO]{\MakeUppercase{%
    \scriptsize\thechapter. \leftmark}}%
  \fancyhead[LE,RO]{\roman{page}}%
}

% new commands
\AtBeginDocument{%
  \renewcommand{\phi}{\varphi}
  \renewcommand{\hat}{\widehat}
  \renewcommand{\tilde}{\widetilde}
  \renewcommand{\bar}{\overline}
\renewcommand{\i}{\mathrm{i}}
\renewcommand{\d}{\mathrm{d}}
\newcommand{\p}{\partial}
\newcommand{\h}{\hbar}
\newcommand{\e}{\mathrm{e}}
\renewcommand{\pi}{\uppi}
\renewcommand\thefigure{\arabic{figure}}
\renewcommand{\epsilon}{\varepsilon}
}

