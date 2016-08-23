\ProvidesClass{shawnlower-cv}
\NeedsTeXFormat{LaTeX2e}

\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Most of this stuff stolen from the Adrien Friggeri 'Fancy CV' %
%   https://www.sharelatex.com/templates/cv-or-resume/fancy-cv  %
% with some stuff pulled from bitwalker's CV as well           '%
%   https://github.com/bitwalker/resume/blob/master/resume.sty  %
% (I also read the occasional piece of documentation, although  %
% that may not be apparent).                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%
% Imports %
%%%%%%%%%%%
\usepackage{fancyhdr} % Embed the build date / revision in footer
\usepackage{graphicx} % Use for drawing boxes and other figures
\usepackage{hyperref}
\usepackage{lipsum}   % Use to pad work experience :-)
\usepackage{url}      % Embed URLs in document; works in PDF
\usepackage{resume}


%%%%%%%%%%%%%%%%%%%%%%%%
% Basic layout options %
%%%%%%%%%%%%%%%%%%%%%%%%
%\RequirePackage[left=0.5cm,top=2.0cm,right=0.5cm,bottom=0.0cm,nohead,nofoot]{geometry}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}
\colorlet{header}{gray}
\colorlet{headerlight}{lightgray}
\colorlet{headerdark}{darkgray}

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}

\newfontfamily\bodyfont
[BoldFont=Roboto-Bold.ttf,
ItalicFont=Roboto-Italic.ttf,
BoldItalicFont=Roboto-BoldItalic.ttf]
{Roboto-Regular.ttf}

\newfontfamily\thinfont[]{Roboto-Thin.ttf}
\newfontfamily\headingfont[]{Jura-Medium.ttf}
\newfontfamily\subheadingfont[]{Jura-Medium.ttf}
\defaultfontfeatures{Mapping=tex-text}

\setmainfont
[Mapping=tex-text, Color=textcolor,
BoldFont=Roboto-Bold.ttf,
ItalicFont=Roboto-Italic.ttf,
BoldItalicFont=Roboto-BoldItalic.ttf
]
{Roboto-Regular.ttf}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{fillheader}{HTML}{EEEEEE}

%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

%\newcommand{\rolefont}{%
%  \fontsize{14pt}{24pt}\selectfont%
%  \thinfont%
%  \color{white}%
%}

\newcommand{\header}[3]{
  \begin{tikzpicture}[remember picture,overlay]
    % use \node to draw our filled rectangle
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=3.2cm] (box) at (current page.north){};
    % create another node for the text inside our filled rect
    \node [anchor=center] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{headerlight}{\headingfont #1}%
      \fontsize{40pt}{72pt}\color{headerdark}{\headingfont #2}%
      \begin{minipage}{2cm}{%
          \fontsize{12pt}{14pt}\color{headerdark}{\headingfont #3}%
      }\end{minipage}%

   };%
  \end{tikzpicture}%
}

%%%%%%%%%
% Icons %
%%%%%%%%%

\newcommand*\iconGithub{\includegraphics[height=0.4cm]{icon-GitHub-32px}}
\newcommand*\iconTwitter{\includegraphics[height=0.4cm]{icon-Twitter-blue.png}}
\newcommand*\iconLinkedIn{\includegraphics[height=0.4cm]{icon-LinkedIn.png}}
\newcommand*\iconMail{\includegraphics[height=0.4cm]{icon-Mail.png}}
\newcommand*\iconPhone{\includegraphics[height=0.4cm]{icon-Phone.png}}
\newcommand*\iconHome{\includegraphics[height=0.4cm]{icon-Home.png}}

%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

%\RequirePackage[absolute,overlay,showboxes]{textpos}
%\setlength{\TPHorizModule}{1cm}
%\setlength{\TPVertModule}{1cm}
%\newenvironment{aside}{%
%  \let\oldsection\section
%  \renewcommand{\section}[1]{
%    \par\vspace{\baselineskip}{\Large\headingfont\color{headercolor} ##1}
%  }
%  % {width from left?}{left margin}{from top}
%  \begin{textblock}{0.0}(0.5, 5.2)
%  \begin{flushleft}
%  \obeycr
%}{%
%  \restorecr
%  \end{flushleft}
%  \end{textblock}
%  \let\section\oldsection
%}

