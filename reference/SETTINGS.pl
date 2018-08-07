:- module(_, [], [doccfg]).

:- include(ciao_docsrc(common/'LPDOCCOMMON')).

output_name := 'ciao'.

filepath := at_bundle(core, 'doc/common').
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
	  'GettingStarted'-(~docstr_gettingstarted),
	  'DevEnv'-(~docstr_devenv),
	  'BasicLang'-(~docstr_basiclang),
	  'AssrtLang'-(~docstr_assrtlang),
	  'ExtendLang'-(~docstr_extendlang),
	  'CompatProlog'-(~docstr_compatprolog),
	  'DataStructuresAlgs'-(~docstr_datastructuresalgs),
	  'StdLibs'-(~docstr_stdlibs),
	  'ExtraLibs'-(~docstr_extralibs),
	  'Interfaces'-(~docstr_interfaces)
        ].

% ---------------------------------------------------------------------------

docstr_gettingstarted :=
	['Install',
	 'InstallWin32bin',
	 'CommandLineUse',
	 'EmacsUse'
%	 'BeyondInstall' % TODO: move to website
	 ].

% ---------------------------------------------------------------------------

docstr_devenv :=
	['toplevel/toplevel_doc',
	 'debugger/debugger_doc'-['debugger/debugger'],
	 'builder_doc',
	 'ciaoc',
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

% ---------------------------------------------------------------------------

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

% ---------------------------------------------------------------------------

docstr_compatprolog :=
	['iso_doc',
	 'iso_char',
	 'iso_misc',
	 'iso_incomplete',
	 % (most of them obsolete)
	 'dec10_io',
	 'old_database',
	 'ttyout',
	 'runtime_ops/runtime_ops_doc',
	 'listing'].

% ---------------------------------------------------------------------------

docstr_stdlibs :=
	[% (Standard library)
	 %
	 'default_predicates',
	 %
	 'between',
	 %
	 'aggregates',
	 %
	 'libpaths',
	 %
	 'assertions/assrt_lib',
	 'compiler/compiler', % TODO: for dynamic compilation and code loading
	 % Streams and I/O
	 'streams_basic', % engine
	 'io_basic', % engine
	 % Read/write terms
	 'tokenize',
	 'read',
	 'read_from_string',
	 'write',
	 'operators',
	 'format',
	 % Some useful I/O predicates
	 'streams_utils',
	 % Message printing
	 'io_aux', % engine
	 % Runtime system (the engine)
	 'prolog_flags', % engine
	 'system_info', % engine
	 'prolog_sys',
	 % OS
	 'system',
	 'pathnames',
	 'process/process'-['process/process_channel']
	 %
	 ].

%    'classic_doc'

% ---------------------------------------------------------------------------

docstr_assrtlang :=
	['assertions/assertions_doc'-[
	   'assertions/assertions_props'
         ],
	 'regtypes/regtypes_doc',
	 'assertions/native_props',
	 %
	 'isomodes/isomodes_doc',
	 'basicmodes/basicmodes_doc',
	 %
	 'doccomments/doccomments_doc'
	].
	 
% ---------------------------------------------------------------------------

docstr_extralibs :=
	['getopts',
	 'messages',
	 %
	 'streams',
	 'io_alias_redirection',
	 %
	 'port_reify',
	 'io_port_reify',
	 %
	 'ctrlcclean',
	 'errhandle',
	 %
	 'fastrw',
	 %
	 'counters',
	 %
	 'file_locks/file_locks',
	 %
	 'terms',
	 'terms_check',
	 'terms_vars',
	 'cyclic_terms',
	 %
	 'modblobs/modblobs',
	 %
	 'formulae',
	 % Pretty-printers
	 'pretty_print',
	 'assertions/assrt_write',
	 %
	 'syntax_highlight/syntax_highlight',
	 %
	 'librowser/librowser',
	 % Debugging
	 'tracing/traces'-[
           'byrdbox/byrd'
         ],
	 % Debugging packages
	 'expansion_tools',
	 %
	 'concurrency/concurrency',
	 'conc_aggregates',
	 %
	 'random/random',
	 %
	 'random_aggregates',
	 %
	 'sockets/sockets',
	 'sockets/sockets_io',
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
	 'system_extra',
	 %
	 'source_tree/source_tree',
	 %
	 'archive_files',
	 %
	 'version_strings',
	 %
	 'glob',
	 'regexp/regexp_doc'-['regexp/regexp_code'],
	 'text_template',
	 %
	 'parse_shell_args',
	 %
	 'symfnames/symfnames',
	 %
	 'menu/menu_doc'-[
	   'menu/menu_generator'
         ],
	 %
	 'opendoc',
	 %
	 'emacs/emacs'
	 ].

% ---------------------------------------------------------------------------

docstr_extendlang :=
	['pure/pure_doc',
	 % Higher order, interfaces, etc.
	 'hiord_rt', % engine
	 'hiordlib',
	 'traits/traits_doc',
	 % Records and functional notation
	 'argnames/argnames_doc',
	 'fsyntax/fsyntax_doc',
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
	 'lazy/lazy_doc'-[
	   'lazy/lazy_lib'
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
	 %
	 'bf/bf_doc',
	 'id/id_doc',
	 % Constrain domains
	 'clpq/clpq_doc',
	 'clpr/clpr_doc',
	 'clpfd/clpfd_doc'-[
	   'clpfd/clpfd_rt'
         ],
         % Persistence
	 'persdb/persdb_rt'-[
	   'persdb/persdb_examples',
	   'persdb/datadir'
         ],
	 'factsdb/factsdb_doc'-[
	   'factsdb/factsdb_rt'
         ],
	 % Attributed variables (used by other extensions)
	 'attr/attr_doc' - [
           'attr/attr_rt',
           'attributes' % engine
         ],
	 % Foreign interface to C
	 'foreign_interface/foreign_interface_doc'-[
	   'foreign_interface/foreign_interface_properties',
	   'foreign_compilation',
	   'foreign_interface/build_foreign_interface'
         ]
         ].

% ---------------------------------------------------------------------------

docstr_interfaces :=
	[%
	 'davinci/davinci',
	 %
	 'linda'].

% ---------------------------------------------------------------------------

% Theses are data structures (in the sense of [1]), implementing some ADTs [2]
%   [1] https://xlinux.nist.gov/dads/HTML/dataStructure.html
%   [2] https://xlinux.nist.gov/dads/HTML/abstractDataType.html
docstr_datastructuresalgs :=
	[% Lists and strings
	 'lists',
	 'sort',
	 'llists',
	 'idlists',
	 'numlists',
	 'strings',
	 'fuzzy_search/fuzzy_search',
	 'diff',
	 % Maps
	 'dict',
	 'vndict',
	 'arrays',
	 'assoc',
	 'keys', % TODO: document/merge
	 % Graphs
	 'graphs/graphs',
	 'graphs/ugraphs',
	 % 'graphs/wgraphs', % it was a verbatim copy of lgraphs using X is min(A,B) instead of min/3
	 'graphs/lgraphs',
	 % Queues
	 'queues',
	 % Sets
	 'sets',
	 'bitcodesets', % TODO: review
	 'lsets' % TODO: document/merge
        ].

% ---------------------------------------------------------------------------

% TODO: other libraries that are distributed but not ready:
%   'metatypes'
%   'meta_props'
%   'loops'
%   'parse_spec'
%   'prompt'

% ---------------------------------------------------------------------------

%doc_mainopts := no_patches.
doc_mainopts := _ :- fail. % Allow patches in main changelog (those are the release notes)
% TODO: Added no_propuses because texindex breaks with very large
%       indices (due to internal, maybe arbitrary, limitations) --JF.
doc_compopts := no_isoline|no_engmods|propmods|no_changelog|no_propuses.

bibfile := ~ciao_bibfile.

% TODO: port this manual
allow_markdown := no.
syntax_highlight := no.
