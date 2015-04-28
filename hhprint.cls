% hhprint.cls
% Copyright 2015 Hitchhikers Robotics Group
% 2015-April-27 Carl Colglazier

\LoadClass{article}

\ProvidesClass{hhprint}[2015/04/27]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Setup

%%% Margins %%%
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

%%% Colors %%%
\RequirePackage{xcolor}

\definecolor{orange}{HTML}{FFC163}
\definecolor{logo-orange}{HTML}{FF9800}
\definecolor{blue}{HTML}{558ED5}
\definecolor{white}{HTML}{FFFFFF}

\makeatletter
\newcommand{\globalcolor}[1]{% Set default color.
  \color{#1}\global\let\default@color\current@color
}
\makeatother

\AtBeginDocument{\globalcolor{blue}}

%%% Font %%%
\RequirePackage{fontspec}
\setmainfont{Open Sans}
\renewcommand{\familydefault}{\sfdefault}

%%% For vectors %%%
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Layout

%% Title Page %%
\RequirePackage{tcolorbox}
\RequirePackage{titling}
\pretitle{\begin{center}\includegraphics[width = 0.75\textwidth]{logo.pdf}\\
  \begin{tcolorbox}[boxrule = 0pt, colback = blue,
    width = 0.5\textwidth, height = 1.25cm, arc = 0.625cm]%
  \centering\Huge\fontspec{Eagle}\fontsize{1cm}{0em}\selectfont\color{white}}
\posttitle{\end{tcolorbox}\end{center}}

%% Headers %%
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\fontspec{Eagle}The Hitchhikers \rightmark }
\chead{}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}

\RequirePackage{titlesec}

%%% Section page %%%
\titleformat{\section}
  {\pagebreak\vspace*{\fill}%
  \color{blue}\titlerule[5pt]%
  \centering\huge\fontspec{Eagle}\fontsize{2cm}{6em}\selectfont}
  {}{0em}
  {}
  [{\titlerule[5pt]\vspace*{\fill}\pagebreak}]

%%% Subsection %%%
\titleformat{\subsection}
  {\Huge\centering\fontspec{Eagle}\fontsize{1.5cm}{4.5em}\selectfont}
  {}{0em}
  {}
  [{\titlerule[5pt]}]
