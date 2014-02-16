%%
%% University of Southern Califirnia Ph.D. Thesis class.
%% For Latex 2.09 or later (i.e. where \documentclass is used).
%% 
%% Created: May 2000 by Zufar Mulyukov
%% Revised: Nov 12 2001 by Zufar Mulyukov
%% Revised: May 28 2009 by A. C. Cassidy
%% Revised: Dec 14 2012 by Gideon Juve
%%
%% Refer to  http://www.usc.edu/dept/GRADSCHL/curr_student/format.htm
%%
%% This minimal USC Ph.D thesis class is partially based on
%% older USCthesis.sty (by Steven Cochran) style file, which 
%% became outdated for both latex and USC thesis editor requirements.
%% Some bits and pieces of this class are written anew, but some  
%% are borrowed from documents I can't remember to cite here.
%% 
%% Author: Zufar Mulyukov (zufarmul@physics.usc.edu)
%% 
%% 
%% The following commands are defined or reefined:
%% \author{Autor's Name}  
%% \major{Correct major name, e.g. Chemistry, not Computational Chemistry}
%% \month{One of conferral months: May, August, December.}
%% \year{2001}
%% \maketitle 
%% \dedication
%% \epigraph
%% \tableofcontents
%% \listoffigures
%% \listoftables
%% \topmatter{Abstract, Acknowledgements or Preface. These are numbered 
%%            with roman numerals.}
%% \mainmatter
%% \bibliography
%% 
%% 
%% 
%% 
%% An example below should give a pretty good idea how to use this
%% class, so no documentation is provided. Please refer to the code
%% for details.
%%
%% Notes: 1. Reference lists after each chapter are NOT approved by 
%%           USC editor, so don't use packages like ``bibunits''.
%%
%%        2. Signature list is not created by this class.  
%%
%% Thesis example:
%% -------------------------------------
%% \documentclass{USC-Thesis}
%% \usepackage{graphicx}
%% \usepackage{amsmath}
%% 
%% \begin{document}
%% 
%% \title{Part I. Break up of the Hydrogen Molecular Ion  by an \break 
%%        Electric Field.\break
%%        Part II. Protein Identification via Mass Spectrometry.}
%% 
%%  \author{Zufar Mulyukov}
%%  \major{Physics}
%%  \month{December}
%%  \year{2000}
%%  \maketitle
%% 
%% \dedication
%%     \begin{quote}
%%         \raggedleft {\em to ...}
%%     \end{quote}
%% 
%% \tableofcontents 	% Table Of Contents
%% 
%% \listoffigures	% List of figures
%% 
%% \listoftables	% List of tables
%% 
%% \topmatter{Preface}  % Preface with acknowlegements, etc.
%% \input{preface.tex}
%% 
%% \mainmatter 		% Begin Body
%% 
%% \part{Break up of the Hydrogen Molecular Ion by an Electric Field}
%% \input{ATOM/h2plus.tex}
%% 
%% \part{Protein Identification via Mass Spectrometry}
%% \input{MSMS/msms.tex}
%% 
%% \bibliographystyle{alpha}   
%% \bibliography{references}
%% 
%% \appendix    	% appendix is standard from latex report class.
%% \input{appendix.tex}
%% \end{document}
%% -------------------------------------
%%
\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{USC-Thesis}[2011/12/14]
\typeout {This document is formatted by USC-Thesis latex class  in accordance 
 with Ph.D. thesis format requirements of University of Southern California.}

\RequirePackage{setspace}[1998/04/8]
\newcommand{\properspacing}{\setstretch{1.6}} %default spacing

\DeclareOption{final}{\renewcommand{\properspacing}{\doublespacing}}
\DeclareOption{draft}{\renewcommand{\properspacing}{\singlespacing}}

\DeclareOption*{
 \PassOptionsToClass{\CurrentOption}{report}
}
\ProcessOptions\relax

\LoadClass[11pt,letterpaper]{report}

%% This is to set font to times roman (stolen from file times.sty)
%% If you want to use default font remove next 3 lines. 
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{ptm}
\renewcommand{\ttdefault}{pcr}

%% Reduce the size of the chapter titles
\let\Huge=\LARGE
\let\huge=\LARGE

%% Set the correct interline spacing. 
\properspacing


%% Define text area size for USC thesis
\setlength{\oddsidemargin}{0.6in}   % really 1.6in
\setlength{\evensidemargin}{0.6in}  % really 1.6in
\setlength{\textwidth}{5.8in}
\setlength{\topmargin}{0.1in}       % really 1.1in 
\setlength{\headheight}{0.in}       % was 0.2in
\setlength{\headsep}{0.in}          % was 0.2in
\setlength{\textheight}{8.4in}      % was 8.2in
\setlength{\footskip}{0.4in}
\setlength{\footnotesep}{0.6cm}


% \author,  \major,  \month and \year
% commands for title page. Use them before \maketitle command. Something like:
% \author{Zufar Mulyukov}
% \major{Physics}
% \month{December}
% \year{2000}
\def\major#1{\gdef\@major{#1}}
\def\month#1{\gdef\@month{#1}}
\def\year#1{\gdef\@year{#1}}
 

%% \maketitle command to make Ph.D. title page
\renewcommand{\maketitle}{
  \begin{titlepage}%
   \singlespacing
   \setcounter{page}{0}%
    \null
    %\vfill%\vfill
    \begin{center}%
      %\vskip 1.06 true in
      \MakeUppercase{\@title} \par
      \vskip 1.625 true in%
      by%
      \vskip 0.75 true in%
      \@author
      \vskip 1.0 true in%
      \rule[0.0cm]{\linewidth}{0.03cm} 
      \vskip 1.0 true in
      A Dissertation Presented to the     \\
      FACULTY OF THE USC GRADUATE SCHOOL  \\
      UNIVERSITY OF SOUTHERN CALIFORNIA   \\
      In Partial Fulfillment of the       \\
      Requirements for the Degree         \\
      DOCTOR OF PHILOSOPHY                \\
      \MakeUppercase{(\@major)}           \\*[1.0 true cm]%
      %\vfill
      \vskip 0.25 true in%
      {\@month \ \@year \par}%   should be just month and year
    \end{center}%
    \par
    %\vfill
    \vskip 0.61 true in
    \begin{center}%
      {\normalsize\ Copyright~ \@year\ \hfill ~\@author}%
    \end{center}%
 \end{titlepage}
   \pagenumbering{roman}
   \addtocounter{page}{1}
}

%% Make the table of contents, list of figs and list of tables
%% single spaced
%%
\let\oldtableofcontents = \tableofcontents
\renewcommand{\tableofcontents}{ 
    \clearpage
    % Add a bookmark in the PDF even though there is no entry for the ToC in the ToC
    \pdfbookmark[0]{\contentsname}{toc}
    \pagestyle{plain}
    \begin{singlespace} 
    \oldtableofcontents 
    \end{singlespace}
}

% This is a new chapter-level counter for the non-numbered sections to fix hyperref links
\newcounter{nochapter}

\let\oldlistoftables = \listoftables
\renewcommand{\listoftables}{
    \clearpage
    \refstepcounter{nochapter}% This is so that the hyperref points to the correct place
    \addcontentsline{toc}{chapter}{\listtablename}
    \pagestyle{plain}
    \begin{singlespace} 
    \oldlistoftables 
    \end{singlespace}
}

\let\oldlistoffigures = \listoffigures
\renewcommand{\listoffigures}{  
    \clearpage
    \refstepcounter{nochapter}% This is so that the hyperref points to the correct place
    \addcontentsline{toc}{chapter}{\listfigurename}
    \pagestyle{plain}
    \begin{singlespace} 
    \oldlistoffigures
    \end{singlespace}
}

\renewcommand{\bibname}{Bibliography}
\let\oldbibliography = \bibliography
\renewcommand{\bibliography}[1]{
    \cleardoublepage% Clear double page so that the page number comes out right
    \refstepcounter{nochapter}% This is so that the hyperref points to the correct place
    \addcontentsline{toc}{chapter}{\bibname}
    \pagestyle{plain}
    \begin{singlespace}
    \oldbibliography{#1}
    \end{singlespace}
}

%%ACC don't think I`m using this
%\renewenvironment{thebibliography}[1]
%     {\chapter*{\bibname
%        \addcontentsline{toc}{chapter}{\bibname}
%        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
%\begin{singlespace} %
%      \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            \advance\leftmargin\labelsep
%            \@openbib@code
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%      \sloppy
%      \clubpenalty4000
%      \@clubpenalty \clubpenalty
%      \widowpenalty4000%
%      \sfcode`\.\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%      \endlist
%\end{singlespace}
%}

% Even though lists of figures are single-spaced, Editor requires
% double spacing between the items in the lists. 
%\let\oldcaption = \caption
%\renewcommand{\caption}[1]{
%    \oldcaption{#1}
%    \addtocontents{lof}{\protect\addvspace{10\p@}}%
%    \addtocontents{lot}{\protect\addvspace{10\p@}}%
%}


%%
%% \topmatter : Things like Abstract, Acknowledgments, Preface.
%%    Usage:
%%       \topmatter{Title Of Matter}
%%
%%       Use like \chapter, once for each page of matter you want.  Don't
%%       use numbered sections within these.  Use \section* instead.
%%
\newcommand{\topmatter}[1]{
    \pagestyle{plain}
    \chapter*{#1}
    \addcontentsline{toc}{chapter}{#1}
}

%%
%% Redefinition of abstract environment. Note that this is not for
%% the separate page of abstract required by USC thesis editor.
%% Including an abstract in your thesis is optional.
\renewenvironment{abstract}{\topmatter{Abstract}}{}


%% \dedication command. Same as \topmatter, except it does not put
%% word Dedication on the dedication page. Use it something like:
%% \dedication
%%    \begin{quote}
%%        \raggedleft {\em to my parents}
%%    \end{quote}
\newcommand{\dedication}{
    \pagestyle{plain}
    \chapter*{}
    \addcontentsline{toc}{chapter}{Dedication}
}

%% Same as dedication, but puts the word Epigraph in the table of contents
\newcommand{\epigraph}{
    \pagestyle{plain}
    \chapter*{}
    \addcontentsline{toc}{chapter}{Epigraph}
}

%%
%% \mainmatter : Signals the start of the document's body.
%%    Usage:
%%       \mainmatter
%%
%%       Use once before the first numbered \chapter.
%%
\newcommand{\mainmatter}{
    \clearpage
    \pagestyle{plain}
    \pagenumbering{arabic}
    \sloppy
}

%% Redefine plain style page to move the page number to the lower
%% right corner.
%%
\renewcommand{\ps@plain}{
    \renewcommand{\@oddhead}{}
    \renewcommand{\@evenhead}{}
    \renewcommand{\@evenfoot}{\hfil\textrm{\thepage}}
    \renewcommand{\@oddfoot}{\@evenfoot}
}


%%
%% Modify Penalties (stolen from old usc thesis style file).
%%
\brokenpenalty 10000       % Disallow page breaks at hyphens (this
                           % will give some underfull vbox's, so an
                           % alternative is to use \brokenpenalty=100
                           % and manually search for and fix such page
                           % breaks)  
\clubpenalty 10000         % Disallow club (orphan) lines
\displaywidowpenalty 10000 % Disallow widow lines before display
\widowpenalty 10000        % Disallow widow lines

%%
%% Disallow x- or -xx breaks.  But if used in an old TeX, we will just
%% have to do without and hope for the best. 
%%
\ifx\undefined\inputlineno\else
  \lefthyphenmin=3
  \righthyphenmin=3
\fi

%% I've heard a complain from the editor about ``too much white space'' while
%% starting chapters by standard latex. So let's remove the vertical
%% space before the line ``Chapter ...''. If you want to return to standard
%% formatting - uncomment  \vspace*{50\p@}%  line
%%
\def\@makechapterhead#1{
  %\vspace*{50\p@}%   % standard is 50\p@ 
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@ %standard is 20\p@
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@ %standard is 40\p@
  }
}

% This is designed to match the above. I used it for my single appendix, which
% was not supposed to have a letter (i.e. "Appendix" not "Appendix A")
\def\@makeschapterhead#1{
  %\vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }
}

%% Redefine maximum fraction of the page that floats (figs, etc.) can
%% occupy. This prevents creating pages with only small figure on them.
\renewcommand{\topfraction}{.9}        % default is 0.7
\renewcommand{\bottomfraction}{.9}     % default is 0.3
\renewcommand{\floatpagefraction}{.9}  % default is 0.5


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Changes to the table of contents   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[titles]{tocloft}

% Change name of toc from 'Contents' to 'Table of Contents'
\renewcommand{\contentsname}{Table of Contents}

% Margins of toc, lof, lot - so that the page numbers in toc,lof,lot do 
% not align with page number of the page they are on
\cftsetrmarg{0.7in}
\newlength{\numtomarg}
\setlength{\numtomarg}{0.2in}
\renewcommand{\cftchapafterpnum}{\hbox to \numtomarg{\hss}}
\renewcommand{\cftsecafterpnum}{\hbox to \numtomarg{\hss}}
\renewcommand{\cftsubsecafterpnum}{\hbox to \numtomarg{\hss}}
\renewcommand{\cftfigafterpnum}{\hbox to \numtomarg{\hss}}
\renewcommand{\cfttabafterpnum}{\hbox to \numtomarg{\hss}}

% No fat spaces between chapters in lof, lot
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}
\addtocontents{lot}{\protect\noaddvspace}

% Double space between entries in toc, lot, lof
\setlength{\cftbeforechapskip}{10pt}
\setlength{\cftbeforefigskip}{10pt}
\setlength{\cftbeforetabskip}{10pt}

% Change font of chapter and page numbers from boldface to normal
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}

% Add 'Chapter' before the chapter number in toc
%\renewcommand{\cftchappresnum}{Chapter} 
\renewcommand{\cftchapaftersnum}{: }
%\settowidth{\cftchapnumwidth}{Chapter 10: }

% Add 'Table' before table number in list of tables
\renewcommand{\cfttabpresnum}{Table }
\renewcommand{\cfttabaftersnum}{: }
\settowidth{\cfttabnumwidth}{Table 10.10: }

% Add 'Figure' before figure number in list of figures
\renewcommand{\cftfigpresnum}{Figure }
\renewcommand{\cftfigaftersnum}{: }
\settowidth{\cftfignumwidth}{Figure 10.10: }
