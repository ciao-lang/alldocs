:- module(_, [], [doccfg]).

:- include(ciao_docsrc(common/'LPDOCCOMMON')).

filepath := ~ciaofilepath_common.

output_name := 'ciao_devel'.

doc_structure := [
    'CiaoDevel'-[
        'ReportingBugs',
	'CodingStyle',
        'GitWorkflow',
	'TestChanges',
	'CodeReviews',
	'NewRelease',
	%
        'CiaoBiblio'
	%
	% TODO: Other (low-level) docs: INDEV/internals-18.tex, PortingNewPlatforms
    ]
].

%doc_mainopts := no_patches.
doc_mainopts := _ :- fail. % Allow patches in main changelog (those are the release notes)
% TODO: Added no_propuses because texindex breaks with very large
%       indices (due to internal, maybe arbitrary, limitations) --JF.
doc_compopts := no_isoline|no_engmods|propmods|no_changelog|no_propuses.

bibfile := ~ciao_bibfile.

% syntax_highlight := no.

