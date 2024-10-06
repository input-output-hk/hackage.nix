{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "harpie"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2016-2024";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/harpie#readme";
      url = "";
      synopsis = "Haskell array programming.";
      description = "This package provides Haskell array programming, interface and environment.\n\nModule names clash with each other and with the Prelude.\n\n== Usage\n\n>>> import Harpie.Fixed qualified as F\n>>> import Harpie.Shape qualified as S\n>>> import Harpie.Array qualified as A\n\n>>> a = F.range @[2,3,4]\n>>> F.shape a\n[2,3,4]\n>>> pretty a\n[[[0,1,2,3],\n  [4,5,6,7],\n  [8,9,10,11]],\n [[12,13,14,15],\n  [16,17,18,19],\n  [20,21,22,23]]]\n\n>>> a = A.range [2,3,4]\n>>> F.shape a\n[2,3,4]\n>>> pretty a\n[[[0,1,2,3],\n  [4,5,6,7],\n  [8,9,10,11]],\n [[12,13,14,15],\n  [16,17,18,19],\n  [20,21,22,23]]]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
          ];
          buildable = true;
        };
      };
    };
  }