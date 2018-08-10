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
	  ~docstr_gettingstarted,
	  ~docstr_devenv,
	  ~docstr_basiclang,
	  ~docstr_assrtlang,
	  ~docstr_extendlang,
	  ~docstr_compatprolog,
	  ~docstr_datastructuresalgs,
	  ~docstr_stdlibs,
	  ~docstr_extralibs
        ].

% ---------------------------------------------------------------------------

docstr_gettingstarted :=
	'GettingStarted'-[
          'Install',
	  'InstallWin32bin',
	  'CommandLineUse',
	  'EmacsUse',
	  'Troubleshooting'
	].

% ---------------------------------------------------------------------------

docstr_devenv :=
	'DevEnv'-[
          'toplevel/toplevel_doc',
	  'debugger/debugger_doc'-['debugger/debugger'],
	  'builder_doc',
	  'ciaoc',
	  'ciao-shell',
	  ~docstr_utils,
	  'CiaoMode'
        ].

% (those are part of the development environment)
docstr_utils :=
	'ciao-utilities'-[
          'ciaodump',
	  % 'xrefs_doc',
	  'xrefs/callgraph',
	  % 'show_deps'?
	  % 'get_deps',
	  'pldiff'
	].

% ---------------------------------------------------------------------------

docstr_basiclang :=
	'BasicLang'-[% (Code organization)
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
	  % (Aggregates)
	  'aggregates',
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
	'CompatProlog'-[
	  'default_predicates', % Moved from standard libraries % TODO: merge with classic_doc
          'iso_doc',
	  'iso_char',
	  'iso_misc',
	  'iso_incomplete',
	  % (most of them obsolete)
	  'dec10_io',
	  'old_database',
	  'ttyout',
	  'runtime_ops/runtime_ops_doc',
	  'listing'
        ].

% ---------------------------------------------------------------------------

% (Standard library)
docstr_stdlibs :=
	'StdLibs'-[
	  % Streams and I/O
	  'stream_basic', % engine
	  'io_basic', % engine
	  'stream_utils',
	  % Read/write terms
	  'tokenize',
	  'read',
	  'read_from_string',
	  'write',
	  'operators',
	  'format',
	  % Message printing
	  'io_aux', % engine
	  % Runtime system (the engine)
	  'prolog_flags', % engine
	  'system_info', % engine
	  'prolog_sys',
	  % Compiler
	  'assertions/assrt_lib',
	  'compiler/compiler', % TODO: for dynamic compilation and code loading
	  'libpaths',
	  % OS
	  'system',
	  'pathnames',
	  'process/process'-['process/process_channel']
	 ].

% ---------------------------------------------------------------------------

docstr_assrtlang :=
	'AssrtLang'-[
          'assertions/assertions_doc'-[
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
	'ExtraLibs'-[
	  % Additional for I/O
	  'streams',
	  'io_alias_redirection',
	  % Additional for control
	  'port_reify',
	  'io_port_reify',
	  %
	  'ctrlcclean',
	  'errhandle',
	  % Additional for data structures
	  'terms',
	  'terms_check',
	  'terms_vars',
	  'cyclic_terms',
	  %
	  'fastrw', % (fast serialization)
	  %
	  'modblobs/modblobs',
	  %
	  'formulae',
	  % 
	  'counters', % (here?)
	  %
	  'between',
	  % Pretty-printers
	  'pretty_print',
	  'assertions/assrt_write',
	  'syntax_highlight/syntax_highlight',
	  % Additional for source
	  'source_tree/source_tree',
	  'version_strings',
	  'librowser/librowser',
	  % Concurrency
	  'concurrency/concurrency',
	  'conc_aggregates',
	  % Random
	  'random/random',
	  'random_aggregates',
	  % Networking
	  'sockets/sockets',
	  'sockets/sockets_io',
          %
	  ~docstr_http,
	  %
	  ~docstr_pillow,
	  % Text templates and matching
	  'glob',
	  'regexp/regexp_doc'-['regexp/regexp_code'],
	  'text_template',
	  % Messages and user interaction
	  'messages',
	  'menu/menu_doc'-[
	    'menu/menu_generator'
          ],
	  % Miscellaneous OS and tools
	  'getopts',
	  'system_extra',
	  'parse_shell_args',
	  'archive_files',
	  'file_locks/file_locks',
	  'symfnames/symfnames',
	  'opendoc',
	  'emacs/emacs'
	].

docstr_http :=
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
	].

docstr_pillow :=
	'pillow/pillow_doc'-[
	  'pillow/html',
	  'pillow/json',
	  'pillow/color_space'
        ].

% ---------------------------------------------------------------------------

docstr_extendlang :=
	'ExtendLang'-['pure/pure_doc',
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
	  ~docstr_actmod,
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
	  ~docstr_attr,
	  % Foreign interface to C
	  ~docstr_foreign
        ].

docstr_actmod :=
	'actmod/actmod_doc'-[
	  'actmod/actmod_dist'-[
            'actmod/regp_filebased',
            'actmod/regp_platformbased',
            'actmod/regp_webbased'
	  ],
          'actmod/actmod_process',
          'actmod/actmod_rt'
	].

docstr_attr :=
	'attr/attr_doc'-[
          'attr/attr_rt',
          'attributes' % engine
        ].

docstr_foreign :=
	'foreign_interface/foreign_interface_doc'-[
	  'foreign_interface/foreign_interface_properties',
	  'foreign_compilation',
	  'foreign_interface/build_foreign_interface'
        ].

% ---------------------------------------------------------------------------

% Theses are data structures (in the sense of [1]), implementing some ADTs [2]
%   [1] https://xlinux.nist.gov/dads/HTML/dataStructure.html
%   [2] https://xlinux.nist.gov/dads/HTML/abstractDataType.html
docstr_datastructuresalgs :=
	'DataStructuresAlgs'-[
          % Lists and strings
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
%   'cmdline'

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
