{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
      validatepure = false;
      validatestk = false;
      validategeneric = false;
      validateprop = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hoed";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2015 Maarten Faddegon";
        maintainer = "hoed@maartenfaddegon.nl";
        author = "Maarten Faddegon";
        homepage = "http://maartenfaddegon.nl";
        url = "";
        synopsis = "Lightweight algorithmic debugging.";
        description = "Hoed is a tracer and debugger for the programming language Haskell. You can trace a program by annotating functions in suspected modules and linking your program against standard profiling libraries.\n\nTo locate a defect with Hoed you annotate suspected functions and compile as usual. Then you run your program, information about the annotated functions is collected. Finally you connect to a debugging session using a webbrowser.\n\nHoed comes in two flavours: Hoed.Pure and Hoed.Stk. Hoed.Pure is recommended over Hoed.Stk: to debug your program with Hoed.Pure you can optimize your program and do not need to enable profiling. Hoed.Stk is Hoed as presented on PLDI 2015 and possibly has benefits over Hoed.Pure for debugging concurrent/parallel programs.";
        buildType = "Simple";
      };
      components = {
        Hoed = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.threepenny-gui
            hsPkgs.filepath
            hsPkgs.libgraph
            hsPkgs.RBTree
            hsPkgs.regex-posix
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.FPretty
          ];
        };
        exes = {
          hoed-examples-FPretty_indents_too_much = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.array
            ];
          };
          hoed-examples-FPretty_indents_too_much__CC = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.array
            ];
          };
          hoed-examples-Insertion_Sort_elements_disappear = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-XMonad_changing_focus_duplicates_windows = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
          hoed-examples-XMonad_changing_focus_duplicates_windows__CC = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
          hoed-examples-XMonad_changing_focus_duplicates_windows__with_properties = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
          hoed-examples-SummerSchool_compiler_does_not_terminate = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.array
            ];
          };
          hoed-examples-SummerSchool_compiler_does_not_terminate__with_properties = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.array
              hsPkgs.QuickCheck
            ];
          };
          hoed-examples-CNF_unsound_de_Morgan__with_properties = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-examples-Digraph_not_data_invariant__with_properties = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.lazysmallcheck
            ];
          };
          hoed-examples-Simple_higher-order_function = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.array
            ];
          };
          hoed-examples-Parity_test = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.array
            ];
          };
          hoed-examples-Expression_simplifier = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.array
            ];
          };
          hoed-examples-Expression_simplifier__with_properties = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.array
            ];
          };
          hoed-tests-Prop-t0 = {
            depends  = optionals _flags.validateprop [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Prop-t1 = {
            depends  = optionals _flags.validateprop [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Prop-t2 = {
            depends  = optionals _flags.validateprop [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.lazysmallcheck
            ];
          };
          hoed-tests-Prop-t3 = {
            depends  = optionals _flags.validateprop [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
          hoed-tests-Prop-t4 = {
            depends  = optionals _flags.validateprop [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
              hsPkgs.extensible-exceptions
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
          hoed-tests-Generic-r0 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-t0 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-r1 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-t1 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-r2 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-t2 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-r3 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Generic-t3 = {
            depends  = optionals _flags.validategeneric [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t1 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t2 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t3 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t4 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t5 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t6 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Pure-t7 = {
            depends  = optionals _flags.validatepure [
              hsPkgs.base
              hsPkgs.Hoed
            ];
          };
          hoed-tests-Stk-DoublingServer = {
            depends  = optionals _flags.validatestk [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-tests-Stk-Insort2 = {
            depends  = optionals _flags.validatestk [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Stk-Example1 = {
            depends  = optionals _flags.validatestk [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Stk-Example3 = {
            depends  = optionals _flags.validatestk [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Stk-Example4 = {
            depends  = optionals _flags.validatestk [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Stk-IndirectRecursion = {
            depends  = optionals _flags.validatestk [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
        };
      };
    }