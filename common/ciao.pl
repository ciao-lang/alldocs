:- use_package(assertions).

:- doc(filetype, application). % TODO: or 'documentation'?

:- doc(title,"The Ciao System").
:- doc(subtitle, "A New Generation, Multi-Paradigm Programming Language and Environment").
:- doc(subtitle, "(Including a State-of-the-Art ISO-Prolog)").

:- doc(logo, 'ciao-shadow-64h').

:- doc(subtitle_extra,"REFERENCE MANUAL").
:- doc(subtitle_extra,"@bf{The Ciao Documentation Series}").
:- doc(subtitle_extra,"@href{https://ciao-lang.org/}").
:- doc(subtitle_extra,"@em{Generated/Printed on:} @today{}").
:- doc(subtitle_extra,"Technical Report CLIP 3/97-@version{}").

% TODO: Replace 'credits' by 'editor'? (JFMC)
:- doc(credits, "@bf{Edited by:}").
:- doc(credits, "Francisco Bueno").
% :- doc(credits, "Daniel Cabeza").
:- doc(credits, "Manuel Carro").
:- doc(credits, "R@'{e}my Haemmerl@'{e}").
:- doc(credits, "Manuel Hermenegildo").
:- doc(credits, "Pedro L@'{o}pez").
:- doc(credits, "Edison Mera").
:- doc(credits, "Jos@'{e} F. Morales").
:- doc(credits, "Germ@'{a}n Puebla").

:- include(ciao_docsrc(common/'ClipAddress')).
:- include(ciao_docsrc(common/'Copyright')).

%% :- doc(bug,"Although the documentation is acceptable at this
%%    point, we are still really in beta mode in this regard.").

:- doc(summary,"

      @include{CiaoDesc.lpdoc}

   ").

:- doc(module,"

   @section{About this manual}
   @cindex{status, this manual}

   This is the @em{Reference Manual} for the Ciao development
   system. It contains basic information on how to install Ciao 
   and how to write, debug, and run Ciao programs from the
   command line, from inside GNU @apl{emacs}, or from a windowing
   desktop. It also documents all the libraries available in the
   standard distribution.

      @include{AboutLPdoc.lpdoc}

   @section{About the Ciao development system}
   @cindex{ciao, global description}

      @include{AboutCiao.lpdoc}

   @section{ISO-Prolog compliance versus extensibility}
   @cindex{iso-prolog, compliance}
   @cindex{extensibility}

      @include{Compliance.lpdoc}

   @section{About the name of the System}
   @cindex{why the name Ciao}
   @cindex{Ciao, why this name}

      @include{AboutName.lpdoc}

   @section{Referring to Ciao}
   @cindex{referring to Ciao}
   @cindex{references, to Ciao}

   If you find Ciao or any of its components useful, we would
   appreciate very much if you added a reference to this manual (i.e.,
   the Ciao reference manual @cite{ciao-reference-manual-tr}) in your
   work. The following is an appropriate BiBTeX entry with the
   relevant data:

@noindent
@begin{verbatim}
@includeverbatim{CiaoReference.lpdoc}
@end{verbatim}

   @section{Acknowledgments} 
   @cindex{acknowledgments}

      @include{Acknowledgments.lpdoc}

").

% TODO: This file is not using the special acknowledgments section.

%    @section{A tour of the manual}
%    @cindex{manual, tour}
%    @cindex{tour, of the manual}
% 
%    The rest of the introductory chapters after this one provide a
%    first ``getting started'' introduction for newcomers to the Ciao
%    system. The rest of the chapters in the manual are organized into a
%    sequence of major parts as follows:
% 
%       @subsection{PART I - The program development environment}
% 
%          @include{DevEnv.lpdoc}
% 
%       @subsection{PART II - The Ciao basic language}
% 
%          @include{BasicLang.lpdoc}
% 
%       @subsection{PART III - Assertions}
% 
%          @include{AssrtLang.lpdoc}
% 
%       @subsection{PART IV - Classic Prolog library (classic)}
% 
%          @include{ClassicProlog.lpdoc}
% 
%       @subsection{PART V - Compatibility}
% 
%          @include{CompatProlog.lpdoc}
% 
%       @subsection{PART VI - Additional libraries}
% 
%          @include{ExtraLibs.lpdoc}
% 
%       @subsection{PART VII - Language extensions}
% 
%          @include{ExtendLang.lpdoc}
% 
%       @subsection{PART VIII - Foreign interfaces}
% 
%          @include{Interfaces.lpdoc}
% 
%       @subsection{PART IX - Data structures and algorithms}
% 
%          @include{DataStructuresAlgs.lpdoc}
% 
%       @subsection{PART X - Appendices}
% 
%          @include{Appendices.lpdoc}

%% --------------------------------------------------------------------------- 

:- doc(version_maintenance,dir('../../core/Manifest')).
:- include(core_docsrc('CHANGELOG')).


