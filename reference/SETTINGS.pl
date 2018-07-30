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
filepath := at_bundle(builder, 'src').
%
filepath := at_bundle(ciao_emacs, 'elisp').

doc_structure := 
        ciao-[
	  (~docstr_getstarted),
	  'DevEnv'-(~docstr_devenv),
	  'BasicLang'-(~docstr_basiclang),
	  'CompatProlog'-(~docstr_compatprolog),
	  'ClassicProlog'-(~docstr_classicprolog),
	  'AnnotatedProlog'-(~docstr_annotatedprolog),
	  'MiscProlog'-(~docstr_miscprolog),
	  'ExtendProlog'-(~docstr_extendprolog),
	  'Interfaces'-(~docstr_interfaces),
	  'DataStructures'-(~docstr_datastructures),
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
	['builder_doc',
	 'ciaoc',
	 'toplevel/toplevel_doc',
	 'debugger/debugger_doc'-['debugger/debugger'],
	 'ciao-shell',
	 'ciao-utilities'-(~docstr_utils),
	 'CiaoMode'].

% (those are part of the development environment)
docstr_utils :=
	['ciaodump',
%        'xrefs_doc',
	 'xrefs/callgraph',
	 % 'show_deps'?
%	 'get_deps',
	 'pldiff'].

docstr_basiclang :=
	[% (Code organization)
	 'modules', % engine
	 'bundles_doc', % engine
	 'packages', % engine
	 'condcomp/condcomp_doc',
	 % (Predicates and terms)
	 'basiccontrol', % engine
	 'exceptions', % engine
	 'basic_props', % engine
	 'term_typing', % engine
	 'term_basic', % engine
	 'term_compare', % engine
	 'atomic_basic', % engine
	 'attr/attr_doc' - [
           'attr/attr_rt',
           'attributes' % engine
         ],
	 'arithmetic', % engine
	 % (Dynamic database)
	 'data_facts', % engine
	 'dynamic', % (OPTIONAL)
	 'dynamic_clauses/dynamic_clauses_doc'-[ % (OPTIONAL)
	   'dynamic_clauses/dynamic_clauses_rt'
 	 ]
        ].

% Should not be used, so we do not document them
% 	'internals'

% Other
% 	'mexpand'

docstr_compatprolog :=
	['iso_doc',
	 'iso_char',
	 'iso_misc',
	 'iso_incomplete',
	 % (most of them obsolete)
	 'dec10_io',
	 'old_database',
	 'ttyout',
	 'runtime_ops/runtime_ops_doc'].

docstr_classicprolog :=
	[	 %
	 % (Standard library)
	 %
	 'default_predicates',
	 %
	 'lists',
	 'sort',
	 'between',
	 %
	 'aggregates',
	 %
	 'libpaths',
	 'compiler/compiler', % TODO: for dynamic compilation and code loading
	 %
	 'streams_basic', % engine
	 'io_basic', % engine
	 'read',
	 'write',
	 'operators',
	 'format',
	 'io_aux', % engine
	 %
	 'system',
	 %
	 'prolog_flags', % engine
	 'system_info', % engine
	 'prolog_sys'].

%    'classic_doc'

docstr_annotatedprolog :=
	['assertions/assertions_doc'-[
	   'assertions/assertions_props'
         ],
	 'regtypes/regtypes_doc',
	 'assertions/native_props',
	 %
	 'isomodes/isomodes_doc',
	 'basicmodes/basicmodes_doc'
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
	 %
	 'port_reify',
	 'io_port_reify',
	 %
	 'read_from_string',
	 %
	 'ctrlcclean',
	 'errhandle',
	 'fastrw',
	 %
	 'pathnames',
	 %
	 'counters',
	 %
	 'file_utils',
	 'file_locks/file_locks',
	 %
	 'formulae',
	 'terms',
	 'terms_check',
	 'terms_vars',
	 'cyclic_terms',
	 %
	 'modblobs/modblobs',
	 %
	 'pretty_print',
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
	 'version_strings',
	 %
	 'regexp/regexp_doc'-['regexp/regexp_code'],
	 'text_template',
	 %
	 'parse_shell_args',
	 %
	 'symfnames/symfnames',
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
	 % Higher order, interfaces, etc.
	 'hiord_rt', % engine
	 'hiordlib',
	 'traits/traits_doc',
	 % Records and functional notation
	 'argnames/argnames_doc',
	 'fsyntax/fsyntax_doc',
	 'lazy/lazy_doc'-[
	   'lazy/lazy_lib'
         ],
	 % DCGs % TODO: add implicits/fluids
	 'dcg/dcg_doc'-['dcg/dcg_phrase_doc'],
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
	 'det_hook/det_hook_doc'-[
	   'det_hook/det_hook_rt'
         ],
	 % TODO: undo/1 should be here
	 % Concurrency and distributed
	 'actmod/actmod_doc'-[
	   'actmod/actmod_dist'-[
             'actmod/regp_filebased',
             'actmod/regp_platformbased',
             'actmod/regp_webbased'
	   ],
           'actmod/actmod_process',
           'actmod/actmod_rt'
         ],
	 % 'agent/agent_doc', (Deprecated)
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
	['foreign_interface/foreign_interface_doc'-[
	   'foreign_interface/foreign_interface_properties',
	   'foreign_compilation',
	   'foreign_interface/build_foreign_interface'
         ],
	 %
	 'menu/menu_doc',
	 'menu/menu_generator',
	 %
	 'davinci/davinci',
	 %
	 'http/http_doc'-[
	   'http/http_client',
	   'http/http_server',
	   'http/url',
	   'http/http_forms',
	   'http/cgi',
	   % (internal)
	   'http/http_messages',
	   'http/http_date',
	   'http/http_grammar'
	 ],
	 %
	 'pillow/pillow_doc'-[
	   'pillow/html',
	   'pillow/json',
	   'pillow/color_space'
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
	 'opendoc',
	 %
	 'emacs/emacs',
	 %
	 'linda'].

% Theses are data structures (in the sense of [1]), implementing some ADTs [2]
%   [1] https://xlinux.nist.gov/dads/HTML/dataStructure.html
%   [2] https://xlinux.nist.gov/dads/HTML/abstractDataType.html
docstr_datastructures :=
	['arrays',
	 'assoc',
	 'idlists',
	 'numlists',
%	 'patterns',

	 'graphs/graphs',
	 'graphs/ugraphs',
	 % 'graphs/wgraphs', % it was a verbatim copy of lgraphs using X is min(A,B) instead of min/3
	 'graphs/lgraphs',
	 %
	 'queues',
	 'random/random',
	 'sets',
	 'vndict',
	 %
	 % TODO: review
	 'bitcodesets',
	 'keys', % TODO: document/merge
	 'lsets' % TODO: document/merge
        ].

%doc_mainopts := no_patches.
doc_mainopts := _ :- fail. % Allow patches in main changelog (those are the release notes)
% TODO: Added no_propuses because texindex breaks with very large
%       indices (due to internal, maybe arbitrary, limitations) --JF.
doc_compopts := no_isoline|no_engmods|propmods|no_changelog|no_propuses.

bibfile := ~ciao_bibfile.

% TODO: port this manual
allow_markdown := no.
syntax_highlight := no.
