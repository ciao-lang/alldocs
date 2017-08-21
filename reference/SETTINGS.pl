:- module(_, [], [lpdoclib(doccfg)]).

:- include(ciao_docsrc(common/'LPDOCCOMMON')).

output_name := 'ciao'.

filepath := at_bundle(core, 'doc/common'). % CiaoDesc, InstallCiao, InstallCiaoWin32, InstallTestUnix, InstallTestWin32bin, UserSetup, EmacsDownload, EmacsTesting
filepath := at_bundle(core, 'shell').
filepath := at_bundle(core, 'ciaoc').
filepath := at_bundle(core, 'engine').
filepath := at_bundle(core, 'cmds').
filepath := ~ciaofilepath_common.
%
filepath := at_bundle(ciao_emacs, 'elisp').
% TODO: needed in CiaoMode.lpdoc because of @include{README_CIAOPP.lpdoc}
filepath := at_bundle(ciaopp, 'doc/readmes'). % TODO: should not be here

doc_structure := 
        ciao-[
	  (~docstr_getstarted),
	  'DevEnv'-(~docstr_devenv),
	  'Builtins'-(~docstr_refcomponents),
	  'IsoProlog'-(~docstr_isoprolog),
	  'ClassicProlog'-(~docstr_classicprolog),
	  'AnnotatedProlog'-(~docstr_annotatedprolog),
	  'MiscProlog'-(~docstr_miscprolog),
	  'ExtendProlog'-(~docstr_extendprolog),
	  'Interfaces'-(~docstr_interfaces),
	  'ADTs'-(~docstr_adts),
 	  'Append'-(~docstr_installation)
        ].

docstr_getstarted :=
	['GetStartUnix',
	 'GetStartWin32'].

docstr_installation :=
	['Install',
	 'InstallWin32bin',
	 'BeyondInstall'].

docstr_devenv :=
	['ciaoc',
	 'toplevel/toplevel_doc',
	 'debugger/debugger_doc'-['debugger/debugger'],
	 'ciao-shell',
	 'ciao-utilities'-(~docstr_utils),
	 'libpaths',
	 'CiaoMode'].

% (those are part of the development environment)
docstr_utils :=
	['ciaodump',
%        'xrefs_doc',
	 'xrefs/callgraph',
	 % 'show_deps'?
%	 'get_deps',
	 'pldiff'].

docstr_refcomponents :=
	['modules', % engine
	 'loading_code', % engine
	 'basiccontrol', % engine
	 'builtin_directives', % engine
	 'basic_props', % engine
	 'term_typing', % engine
	 'term_basic', % engine
	 'term_compare', % engine
	 'atomic_basic', % engine
	 'arithmetic', % engine
	 'streams_basic', % engine
	 'io_basic', % engine
	 'exceptions', % engine
	 'prolog_flags', % engine
	 'data_facts', % engine
	 'syntax_extensions', % engine
	 'io_aux', % engine
	 'attr/attr_doc' - ['attr/attr_rt'],
	 'attributes', % engine
	 'system_info', % engine
	 'condcomp/condcomp_doc',
	 'default_predicates'].

% Should not be used, so we do not document them
% 	'internals'

% Other
% 	'mexpand'

docstr_isoprolog :=
	['iso_doc',
	 'aggregates',
	 'dynamic',
	 'dynamic_rt',
	 'read',
	 'write',
	 'operators',
	 'iso_char',
	 'iso_misc',
	 'iso_incomplete'].

docstr_classicprolog :=
	['dcg/dcg_doc'-['dcg/dcg_phrase_doc'],
	 %
	 'format',
	 'lists',
	 'sort',
	 'compiler/compiler',
	 'between',
	 'system',
	 'prolog_sys',
	 'dec10_io',
	 'old_database',
	 'ttyout',
	 'runtime_ops/runtime_ops_doc'].

%    'classic_doc'

docstr_annotatedprolog :=
	['assertions/assertions_doc',
	 'assertions/assertions_props',
	 'regtypes/regtypes_doc',
	 'assertions/native_props',
	 %
	 'isomodes/isomodes_doc',
	 'basicmodes/basicmodes_doc',
	 'rtchecks/rtchecks_doc'
	].

% 'fdtypes'
%	'metatypes'
%	'meta_props'

% 'benchmarks/ecrc',
	 
docstr_miscprolog :=
	['getopts',
	 'llists',
	 'streams',
	 'dict',
	 'strings',
	 'messages',
	 'io_alias_redirection',
	 'port_reify',
	 'io_port_reify',
	 'read_from_string',
	 'ctrlcclean',
	 'errhandle',
	 'fastrw',
	 'pathnames',
	 'symfnames/symfnames',
	 'file_utils',
	 'file_locks/file_locks',
	 'formulae',
	 'terms',
	 'terms_check',
	 'terms_vars',
	 'cyclic_terms',
	 %
	 'pretty_print',
	 'modblobs/modblobs',
	 %
	 'assertions/assrt_write',
	 %
	 'librowser/librowser',
	 %
	 'expansion_tools',
	 %
	 'concurrency/concurrency',
	 'conc_aggregates',
	 %
	 'random_aggregates',
	 %
	 'sockets/sockets',
	 'sockets/sockets_io',
         %
	 % TODO: nest
	 'system_extra',
	 'process/process'-['process/process_channel'],
	 %
	 'glob',
	 'source_tree/source_tree',
	 %
	 'archive_files',
	 %
	 'regexp/regexp_doc'-['regexp/regexp_code'],
	 'text_template',
	 %
	 'parse_shell_args',
	 %
	 'diff'
	 ].

%    'tokenize',
%     'assrt_lib',
%     'byrd',
% 	'traces',
%     'events',
%     'fly',
%     'listing',
%     'loops',
%     'parse_spec',
%     'prompt'

% TODO: Document: those libraries may change the 'theory'
docstr_extendprolog :=
	['pure/pure_doc',
	 % Higher order
	 'hiord_rt', % engine
	 'hiordlib',
	 % Records and functional notation
	 'argnames/argnames_doc',
	 'fsyntax/fsyntax_doc',
	 'lazy/lazy_doc'-[
	   'lazy/lazy_lib'
         ],
         % Mutables and implicits (globals)
	 'global_vars',
	 'mutables',
	 %
	 'odd', % setarg/3, undo/1 % TODO: rename pred
	 % Control and evaluation strategy
	 'indexer/indexer_doc',
	 'block/block_doc',
	 'freeze/freeze',
	 'when/when',
	 'andorra/andorra_doc',
	 'det_hook/det_hook_doc',
	 'det_hook/det_hook_rt',
	 % TODO: undo/1 should be here
	 % Concurrency
	 'actmod/actmod_doc',
	 'agent/agent_doc',
	 %
	 'bf/bf_doc',
	 'id/id_doc',
	 % Constrain domains
	 'clpq/clpq_doc',
	 'clpr/clpr_doc',
	 'clpfd/clpfd_doc' -[
	   'clpfd/clpfd_rt']
	 % 'fuzzy/fuzzy_doc', (moved to its own repo)
         ].

% 'remote_doc',
% 'mattr_global_doc'

% TODO: menu is not an interface! (this is for interfaces to other languages)
docstr_interfaces :=
	['foreign_interface/foreign_interface_doc',
	 'foreign_interface/foreign_interface_properties',
	 'foreign_compilation',
	 'foreign_interface/build_foreign_interface',
	 %
	 'menu/menu_doc',
	 'menu/menu_generator',
	 %
	 'davinci/davinci',
	 %
	 'pillow/pillow_doc'-[
	   'pillow/html',
	   'pillow/json',
	   'pillow/color_space',
	   'pillow/url',
	   'pillow/cgi',
	   'pillow/http',
	   % 'pillow/http_post', % TODO: why?
	   'pillow/http_server'
         ],
         %
	 'persdb/persdb_rt'-[
	   'persdb/persdb_examples',
	   'persdb/datadir'
         ],
         %
	 'factsdb/factsdb_doc'-[
	   'factsdb/factsdb_rt'
         ],
         %
	 'emacs/emacs',
	 'linda'].

docstr_adts :=
	['arrays',
	 'assoc',
	 'counters',
	 'idlists',
	 'numlists',
%	 'patterns',

	 'graphs/graphs',
	 'graphs/ugraphs',
	 'graphs/wgraphs',
	 'graphs/lgraphs',

	 'queues',
	 'random/random',
	 'sets',
	 'vndict'].

%     'bitcodesets',
%     'formulae',
%     'keys',
%     'llists',
%     'lsets'

%doc_mainopts := no_patches.
doc_mainopts := _ :- fail. % Allow patches in main changelog (those are the release notes)
% TODO: Added no_propuses because texindex breaks with very large
%       indices (due to internal, maybe arbitrary, limitations) --JF.
doc_compopts := no_isoline|no_engmods|propmods|no_changelog|no_propuses.

bibfile := ~ciao_bibfile.

% TODO: port this manual
allow_markdown := no.
syntax_highlight := no.
