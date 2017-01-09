:- bundle(alldocs).
% General Ciao documentation
% (manuals and tutorials covering main bundles)
version('1.16.0-alpha.1').
depends([
  core,
  contrib,
  lpdoc,
  ciaotest, % unit tests, etc.
  ciao_emacs
]). % ciaopp?
%
alias_paths([
  ciao_docsrc = '.'
]).
%
manual('ciao', [main='reference/SETTINGS.pl']).
manual('ciao_devel', [main='developers/SETTINGS.pl']).
