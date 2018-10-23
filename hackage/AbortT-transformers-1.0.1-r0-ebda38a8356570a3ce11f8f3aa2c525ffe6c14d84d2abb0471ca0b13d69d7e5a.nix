{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "AbortT-transformers";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/AbortT-transformers";
      url = "";
      synopsis = "A monad and monadic transformer providing \"abort\" functionality";
      description = "This module provides a monad and a monad transformer that allow the user to abort a monadic computation and immediately return a result.\n\nNew in version 1.0.1: Added liftCallCC, liftCatch, liftListen, and liftPass, as well as more information to the cabal file.\n\nNew in version 1.0.0.1: Bumped the transformers dependencies and updated the maintainer's e-mail address.";
      buildType = "Simple";
    };
    components = {
      "AbortT-transformers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }