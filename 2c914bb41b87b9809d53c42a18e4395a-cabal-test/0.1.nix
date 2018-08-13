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
      specVersion = "0";
      identifier = {
        name = "cabal-test";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2006-2007, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Automated test tool for cabal projects.";
      description = "Cabal-test is a tool for testing cabal projects. It uses the GHC-api to load the code so any\ncode currently buildable by GHCi should be testable by cabal-test.\nYou can choose how many tests to run and how many to run concurrently.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "cabal-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.QuickCheck)
            (hsPkgs.pqc)
            (hsPkgs.ghc)
          ];
        };
      };
    };
  }