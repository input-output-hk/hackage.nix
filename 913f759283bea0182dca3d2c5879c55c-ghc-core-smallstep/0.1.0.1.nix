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
      specVersion = "1.10";
      identifier = {
        name = "ghc-core-smallstep";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2017 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "A small-step semantics for Core";
      description = "This module contains an executable, type ignoring\nsmall-step semantics for Haskell Core with lazyness.";
      buildType = "Simple";
    };
    components = {
      "ghc-core-smallstep" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-core-smallstep)
          ];
        };
      };
    };
  }