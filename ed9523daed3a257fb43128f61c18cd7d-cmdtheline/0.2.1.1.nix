{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cmdtheline";
          version = "0.2.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Eli Frey <eli.lee.frey gmail com>";
        author = "Eli Frey";
        homepage = "http://github.com/eli-frey/cmdtheline";
        url = "";
        synopsis = "Declarative command-line option parsing and documentation library.";
        description = "CmdTheLine aims to remove tedium from the definition of command-line\nprograms, producing usage and help with little effort.\n\nThe inspiration was found in Daniel Bunzli's\n<http://erratique.ch/software/cmdliner> library.\n\nCmdTheLine uses applicative functors to provide a declarative, compositional\nmechanism for defining command-line programs by lifting regular Haskell\nfunctions over argument parsers.\n\nA tutorial can be found at\n<http://elifrey.com/2012/07/23/CmdTheLine-Tutorial/>.\n\nSuggestions, comments, and bug reports are appreciated. Please see the\nbug and issue tracker at <http://github.com/eli-frey/cmdtheline>.\n\nChanges since 0.1:\n\n* More type safety: Types in CmdTheLine.Arg have been made more explicit to\ndisalow unwanted behavior.  Positional argument information and optional\nargument information are distinguished from each other.  As well 'Arg's must\nbe transformed into 'Term' before use, as some operations make since to\nperform on 'Arg' but not on 'Term'.\n\n* ArgVal has only one method: 'parser' and 'pp' have been fused into a tuple, so\nthat instantiation of 'ArgVal' can be simplified for all parties.\n\n* Err is an instance of MonadIO:  The 'Err' monad now supports IO action.\n\n* File and Directory path validation:  Taking advantage of new 'Err'\ncapabilities, the library provides new functions for validating 'String's\ninside of 'Term's as being valid\\/existent file\\/directory paths.\n\nChanges since 0.2.0:\n\n* Test friendly 'unwrap' functions:  To allow the testing of terms, there are\nnow two new functions exported with System.Console.CmdTheLine.Term, 'unwrap'\nand 'unwrapChoice'.  As well a datatype representing cause of early exit,\n'EvalExit' is exported.";
        buildType = "Simple";
      };
      components = {
        "cmdtheline" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.filepath
          ];
        };
        tests = {
          "Main" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.filepath
            ];
          };
        };
      };
    }