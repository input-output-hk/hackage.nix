{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "elm-repl";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "https://github.com/elm-lang/elm-repl";
      url = "";
      synopsis = "a REPL for Elm";
      description = "A read-eval-print-loop (REPL) for evaluating Elm expressions,\ndefinitions, ADTs, and module imports. This tool is meant to\nhelp you play with small expressions and interact with\nfunctions deep inside of larger projects.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-repl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.elm-compiler)
            (hsPkgs.elm-package)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.elm-compiler)
            (hsPkgs.elm-package)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
          ];
        };
      };
    };
  }