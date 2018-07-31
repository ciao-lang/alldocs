%:- module(_, [], []).
:- use_package(doccomments).
:- doc(filetype, application). % TODO: or 'documentation'?

:- doc(title, "Developers and Contributors Guide").

:- doc(logo, 'ciao-grimoire-128h').

:- doc(subtitle_extra,"REFERENCE MANUAL").
:- doc(subtitle_extra,"@bf{The Ciao Documentation Series}").
:- doc(subtitle_extra,"@href{https://ciao-lang.org/}").
:- doc(subtitle_extra,"@em{Generated/Printed on:} @today{}").
:- doc(subtitle_extra,"Technical Report CLIP 3/97-@version{}").

% TODO: This file is not using the special acknowledgments section.
% TODO: Replace 'credits' by 'editor'? (JFMC)

:- doc(credits,   "@bf{Edited by:}").
:- doc(credits,   "The Ciao Development Team").
:- doc(copyright, "The Ciao Development Team").

%:- include(ciao_docsrc(common/'ClipAddress')).
%:- include(ciao_docsrc(common/'Copyright')).

%% :- doc(bug,"Although the documentation is acceptable at this
%%    point, we are still really in beta mode in this regard.").

%! \module
%    This is the Ciao developers and contributors handbook.
%
%    It covers some topics the developers and contributors should be
%    aware of: coding style, code reviews, testing, and preparing
%    releases and distributions.
%
%    If you with to contribute please contact us at
%    \email{ciao\@cliplab.org}.



