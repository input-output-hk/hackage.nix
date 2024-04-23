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
    flags = {
      pure-hs = false;
      c99 = false;
      avx512 = false;
      ghc-prim = true;
      x87-long-double = true;
      float128 = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "rounded-hw"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 ARATA Mizuki";
      maintainer = "minorinoki@gmail.com";
      author = "ARATA Mizuki";
      homepage = "https://github.com/minoki/haskell-floating-point#readme";
      url = "";
      synopsis = "Directed rounding for built-in floating types";
      description = "Please see the README on GitHub at <https://github.com/minoki/haskell-floating-point/tree/master/rounded-hw#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
      ];
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ] ++ pkgs.lib.optional (flags.x87-long-double && (system.isI386 || system.isX86_64)) (hsPkgs."long-double" or (errorHandler.buildDepError "long-double"))) ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"));
        buildable = true;
      };
      tests = {
        "rounded-hw-doctests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "rounded-hw-test" = {
          depends = ([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."rounded-hw" or (errorHandler.buildDepError "rounded-hw"))
          ] ++ pkgs.lib.optional (flags.x87-long-double && (system.isI386 || system.isX86_64 && !system.isWindows)) (hsPkgs."long-double" or (errorHandler.buildDepError "long-double"))) ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"));
          buildable = true;
        };
      };
      benchmarks = {
        "rounded-hw-benchmark" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."rounded-hw" or (errorHandler.buildDepError "rounded-hw"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }