:- use_package(assertions).

:- doc(filetype, application). % TODO: or 'documentation'?

:- doc(title,"The Ciao System").
:- doc(subtitle, "A New Generation, Multi-Paradigm Programming Language and Environment").
:- doc(subtitle, "(Including a State-of-the-Art ISO-Prolog)").

:- doc(logo, 'ciao-logo').

:- doc(subtitle_extra,"REFERENCE MANUAL").
:- doc(subtitle_extra,"@bf{The Ciao Documentation Series}").
:- doc(subtitle_extra,"@href{https://ciao-lang.org/}").
:- doc(subtitle_extra,"@em{Generated/Printed on:} @today{}").
:- doc(subtitle_extra,"Technical Report CLIP 3/97-@version{}").

% (editors for this version; not necessarily the authors)
:- doc(credits, "@bf{Edited by:}").
:- doc(credits, "Francisco Bueno").
:- doc(credits, "Manuel Carro").
:- doc(credits, "Manuel Hermenegildo").
:- doc(credits, "Pedro L@'{o}pez").
:- doc(credits, "Jos@'{e} F. Morales").

:- include(core_docsrc(common/'ClipAddress')).

:- doc(copyright,"Copyright @copyright{} 1996-2024 Francisco Bueno,
    Daniel Cabeza, Manuel Carro, Manuel Hermenegildo,
    P. L@'{o}pez, Jos@'{e} F. Morales, and Germ@'{a}n Puebla
    @include{FreeDocLicense.lpdoc}").

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

   @section{ISO-Prolog compliance and extensibility}
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
   appreciate very much if you added a reference to this manual in
   your work. The following is an appropriate BiBTeX entry with the
   relevant data:

@noindent

@includecode{CiaoReference.lpdoc}

   @section{Acknowledgments} 
   @cindex{acknowledgments}

      @include{Acknowledgments.lpdoc}

").

%% --------------------------------------------------------------------------- 

:- doc(version_maintenance,dir('../../core/Manifest')).
:- doc(module, "@include{../../CHANGELOG.md}").
