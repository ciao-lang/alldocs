:- bundle(alldocs).
% General Ciao documentation
% (manuals and tutorials covering main bundles)
version('1.23.0'). % (same as 'core')
depends([
  core,
  lpdoc,
  ciaodbg, % debugger, profiler, testing, etc.
  ciao_emacs
  % ciaopp?
]).
%
% alias_paths([
%   ciao_docsrc = '.'
% ]).
%
manual('ciao', [main='reference/SETTINGS.pl']).
manual('ciao_devel', [main='developers/SETTINGS.pl']).
