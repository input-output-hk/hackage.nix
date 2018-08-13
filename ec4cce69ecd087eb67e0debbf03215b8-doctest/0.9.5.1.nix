{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "doctest";
        version = "0.9.5.1";
      };
      license = "MIT";
      copyright = "(c) 2009-2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/sol/doctest-haskell#readme";
      url = "";
      synopsis = "Test interactive Haskell examples";
      description = "The doctest program checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).\n\nDocumentation is at\n<https://github.com/sol/doctest-haskell#readme>.";
      buildType = "Simple";
    };
    components = {
      "doctest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.syb)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.ghc-paths)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base-compat)
            (hsPkgs.ghc)
            (hsPkgs.syb)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.ghc-paths)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.stringbuilder)
            (hsPkgs.silently)
            (hsPkgs.setenv)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }