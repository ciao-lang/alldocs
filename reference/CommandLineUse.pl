:- use_package(assertions).

:- doc(filetype, documentation).

:- doc(title,"Using Ciao from the command line").

:- doc(author,"Manuel Hermenegildo").

:- doc(module,"
@section{Starting/exiting the top-level shell}

@cindex{top-level shell, starting}

      The basic methods for starting/exiting the top-level shell have
      been discussed before.  If upon typing @tt{ciao} you get a
      ``command not found'' error or you get a longer message from
      Ciao before starting, it means that either Ciao was not
      installed correctly or you environment variables are not set up
      properly. Follow the instructions on the message printed by Ciao
      or refer to the installation instructions regarding user-setup
      for details.

@section{Getting help}

@cindex{help}

      The basic methods for accessing the manual on-line have also
      been discussed before. Use the table of contents and the indices
      of @em{predicates}, @em{libraries}, @em{concepts}, etc. to find
      what you are looking for. @concept{Context-sensitive} help is
      available within the @apl{emacs} environment (see below).


@section{Compiling and running programs}

@cindex{compiling programs}
@cindex{loading programs}
@cindex{running programs}

      Once the shell is started, you can compile and execute 
      modules inside the interactive top-level shell in the standard
      way. E.g., type @tt{use_module(@em{file}).},
      @tt{use_module(library(@em{file})).} for library modules,
      @tt{ensure_loaded(@em{file}).} for files which are not modules,
      and @tt{use_package(@em{file}).} for library packages (these are
      syntactic/semantic packages that extend the Ciao language
      in many different ways). Note that the use of @pred{compile/1}
      and @pred{consult/1} is discouraged in Ciao.

      For example, you may want to type @tt{use_package(iso_strict)} to
      ensure Ciao has loaded all the ISO builtins (whether this is
      done by default or not depends on your @file{.ciaorc} file).  Do
      not worry about any ``module already in executable'' messages
      --these are normal and simply mean that a certain module is
      already pre-loaded in the top-level shell. At this point, typing
      @tt{write(hello).} should work.

      Note that some predicates that may be built-ins in typical
      Prolog implementations are available through libraries in Ciao.
      This facilitates making small executables.

      To change the working directory to, say, the @tt{examples}
      directory from the Ciao root directory, first do:

@begin{verbatim}
      ?- use_module(library(system)).
@end{verbatim}

      @noindent (loading the @lib{system} library makes a number of
      system-related predicates such as @pred{cd/1} accessible) and
      then:

@begin{verbatim}
      ?- cd('examples').  
@end{verbatim}

      For more information see @ref{The interactive top-level shell}.

@section{Generating executables}

@cindex{executables, generating}
@cindex{compiling programs}

      Executables can be generated from the top-level shell (using
      @pred{make_exec/2}) or using the standalone compiler
      (@apl{ciaoc}). To be able to make an executable, the file should
      define the predicate @pred{main/1} (or @pred{main/0}), which
      will be called upon startup (see the corresponding manual
      section for details).  In its simplest use, given a top-level
      @em{foo}@tt{.pl} file for an application, the compilation
      process produces an executable @tt{foo}, automatically detecting
      which other files used by @tt{foo.pl} need recompilation.

      @noindent For example, within the @file{examples} directory, you
      can type:

@begin{verbatim}
    ?- make_exec(hw,_).
@end{verbatim}

      @noindent which should produce an executable. Typing @tt{hw} in
      a shell (or double-clicking on the icon from a graphical window)
      should execute it.

@comment{
      Another way of creating Ciao executables from source files is by
      right-clicking on @tt{.pl} files and choosing ``make
      executable''. This uses the standalone compiler (this has the
      disadvantage, however, that it is sometimes difficult to see the
      error messages).
}

      For more information see @ref{The interactive top-level shell}
      and @ref{The standalone command-line compiler}.

@section{Running Ciao scripts}

@cindex{scripts}
@cindex{compiling programs}
@cindex{running programs}

@comment{Double-clicking on files ending in @tt{.pls},}
      Ciao allows writing @concept{scripts}. These are files
      containing Ciao source but which get executed without having
      to explicitly compile them (in the same way as, e.g., @tt{.bat}
      files or programs in scripting languages). As an example, you
      can run the file @file{hw} in the @file{examples} 
      directory of the Ciao distribution and look at the source with
      an editor. You can try changing the @tt{Hello world} message and
      running the program again (no need to recompile!).

      As you can see, the file should define the predicate
      @pred{main/1} (not @pred{main/0}), which will be called upon
      startup.  The two header lines are necessary in Unix in. In
      Windows you can leave them in or you can take them out, but you
      need to rename the script to @file{hw.pls}.  Leaving the lines
      in has the advantage that the script will also work in Unix
      without any change.

      For more information see @ref{The script interpreter}.

@section{The Ciao initialization file}

@cindex{.ciaorc}
@cindex{initialization file} 

      The Ciao toplevel can be made to execute upon startup a number
      of commands (such as, e.g., loading certain files or setting
      certain Ciao flags) contained in an initialization file.  This
      file should be called @file{.ciaorc} and placed in your
      @em{home} directory (e.g., @tt{~}, the same in which the
      @file{.emacs} file is put). You may need to set the environment
      variable @tt{HOME} to the path of this directory for the Ciao
      toplevel shell to be able to locate this file on startup.
").

