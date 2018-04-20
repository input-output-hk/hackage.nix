{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      usedebug = false;
      useffi = false;
      uselibraries = true;
      useptrs = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "husk-scheme";
          version = "3.19.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Justin Ethier <github.com/justinethier>";
        author = "Justin Ethier";
        homepage = "http://justinethier.github.com/husk-scheme";
        url = "";
        synopsis = "R5RS Scheme interpreter, compiler, and library.";
        description = "<<https://github.com/justinethier/husk-scheme/raw/master/docs/husk-scheme.png>>\n\nHusk is a dialect of Scheme written in Haskell that implements a superset of\nthe R5RS standard. Advanced features are provided including:\n\n* First-class continuations of unlimited extent\n\n* Hygienic macros based on syntax-rules\n\n* Low-level explicit renaming macros\n\n* Library syntax from the R7RS standard\n\n* A foreign function interface (FFI) to Haskell\n\n* Full numeric tower providing support for real, rational, and complex numbers\n\n* Proper tail recursion and lexical scoping\n\n* Read-Eval-Print-Loop (REPL) interpreter, with input driven by Haskeline to provide a rich user experience\n\n* Standard library of Scheme functions, and support for many popular SRFI's\n\nHusk may be used as either a stand-alone interpreter or as an extension language within a larger Haskell application. By closely following the R5RS standard, the intent is to develop a Scheme that is as compatible as possible with other R5RS Schemes. Husk is mature enough for use in production, however it is not optimized for performance-critical applications.\n\nScheme is one of two main dialects of Lisp. Scheme follows a minimalist design philosophy: the core language consists of a small number of fundamental forms which may be used to implement other built-in forms. Scheme is an excellent language for writing small, elegant programs, and may also be used to write scripts or embed scripting functionality within a larger application.\n\nFor documentation and examples, see\n<http://justinethier.github.io/husk-scheme/documentation.html>.\n\nFor detailed information on each release, see\n<http://justinethier.github.io/husk-scheme/news.html>.";
        buildType = "Simple";
      };
      components = {
        husk-scheme = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.time
            hsPkgs.process
            hsPkgs.knob
          ] ++ pkgs.lib.optionals _flags.useffi [
            hsPkgs.ghc
            hsPkgs.ghc-paths
          ];
        };
        exes = {
          huski = {
            depends  = [
              hsPkgs.husk-scheme
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.process
            ] ++ pkgs.lib.optionals _flags.useffi [
              hsPkgs.ghc
              hsPkgs.ghc-paths
            ];
          };
          huskc = {
            depends  = [
              hsPkgs.husk-scheme
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.ghc-paths
              hsPkgs.process
              hsPkgs.filepath
            ] ++ pkgs.lib.optionals _flags.useffi [
              hsPkgs.ghc
              hsPkgs.ghc-paths
            ];
          };
        };
      };
    }