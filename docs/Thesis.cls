%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
% This class file defines the structure and design of the template. 
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{letterpaper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
%\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  { 1.0in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisorA}[1]{\def\supname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\DEGREE}[1]{\def\DEGREENAME{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\school}[1]{\def\schoolname{#1}}
\newcommand*{\major}[1]{\def\majorname{#1}}
%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------


%-------------------------------------------------   
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------   
\degree{\break Ingenier\'{i}a \break en \break Sistemas Computacionales} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------   
\DEGREE{Ingenier\'{i}a en Sistemas Computacionales} % Your degree name - this is currently used in the Committee Members' Page
%-------------------------------------------------
%-------------------------------------------------   
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------   
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------   
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------   
 \school{Departamento de Computaci\'{o}n y Mecatr\'{o}nica} % Your school's name - used in the Committee Members' Page
%-------------------------------------------------    
 \major{Ingenier\'{i}a en Sistemas Computacionales} % Your major's name - used in the title page
%-------------------------------------------------  
\university{\texorpdfstring{% Your university's URL
                {Instituto Tecnol\'{o}gico y de Estudios Superiores de Monterrey}} % Your university's name - this is currently used in the title page
                {Instituto Tecnol\'{o}gico y de Estudios Superiores de Monterrey}} 
%-------------------------------------------------   
\UNIVERSITY{\texorpdfstring{ % Your university's URL
                {INSTITUTO TECNOL\'{O}GICO Y DE ESTUDIOS SUPERIORES DE MONTERREY}} % Your university's name in capitals - this is currently used in the abstract page
                {INSTITUTO TECNOL\'{O}GICO Y DE ESTUDIOS SUPERIORES DE MONTERREY}}
%-------------------------------------------------                
\department{\texorpdfstring{ % Your department's URL
                {Computaci\'{o}n y Mecatr\'{o}nica}} % Your department's name - used in the title page and abstract
                {Computaci\'{o}n y Mecatr\'{o}nica}}
%-------------------------------------------------                
\DEPARTMENT{\texorpdfstring{ % Your department's URL
                {COMPUTACI\'{O}N Y MECATR\'{O}NICA}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {COMPUTACI\'{O}N Y MECATR\'{O}NICA}}
%-------------------------------------------------                
\group{\texorpdfstring{ % Your research group's URL
                {Intelligent Systems}} % Your research group's name - this is currently used in the title page 
                {Intelligent Systems}}
%-------------------------------------------------                
\GROUP{\texorpdfstring{% Your research group's URL
                {INTELLIGENT SYSTEMS}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
                {INTELLIGENT SYSTEMS}}
%-------------------------------------------------                
\faculty{\texorpdfstring{% Your faculty's URL
                {Campus Quer\'{e}taro}} % Your faculty's name - this is currently used in the abstract page
                {Campus Quer\'{e}taro}}
%-------------------------------------------------                
\FACULTY{\texorpdfstring{ % Your faculty's URL
                {CAMPUS QUER\'{E}TARO}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
                {CAMPUS QUER\'{E}TARO}}
%----------------------------------------------------------------------------------------    

% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE por \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large Sometido \par}
      {\large \schoolname \par}
      {\large para la materia de Proyecto Integrador para el Desarrollo de Soluciones Empresariales \par}
      {\large \degreename \par}
      \bigskip
      \bigskip
      {\large en el\par}
      {\large \facname \par}
      {\large \deptname \par} 
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------

\newenvironment{abstract}
{
  \btypeout{Abstract}
  %\thispagestyle{empty}
  %\null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    %{\normalsize \UNIVNAME \par} % University name in capitals
    %\bigskip
 %   {\huge{\textbf{\@title}} \par} % Thesis title
    %\bigskip
    %{\normalsize \facname \par} % Faculty name
    %{\normalsize \deptname \par} % Department name
    %\bigskip
    %{\normalsize \degreename\par} % Degree name
    %\bigskip
    {\large  \par}
    %\medskip
  %  {\large \authornames \par} % Author name
    \bigskip
  \end{center}
{\Large{\textbf{Abstract}} \par} % Abstract title
}
%----------------------------------------------------------------------------------------
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Contenidos}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Acr\'{o}nimos}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Constantes}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Variables y S\'{i}mbolos}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\dedicatory[1]{
\btypeout{Dedicatoria}
\thispagestyle{plain}
\vskip 60\p@
\begin{center}{\huge{\textit{Dedicatoria}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}
\newcommand\acknowledgements[1]{
\btypeout{Reconocimientos}
%\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Reconocimientos}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}
\newcommand\published[1]{
\btypeout{Publicaciones}
%\addtotoc{Published Papers}
\thispagestyle{plain}
\null\vfil
\begin{center}{\huge\bf Publicaciones\par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}
\newcommand\curriculum[1]{
\btypeout{Curriculum Vitae}
%\addtotocCurriculum Vitae}
\thispagestyle{plain}
\null\vfil
\begin{center}{\huge\bf Curriculum Vitae\par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
