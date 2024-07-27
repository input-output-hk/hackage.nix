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
      avx512 = false;
      c99 = false;
      float128 = false;
      ghc-prim = true;
      pure-hs = false;
      x87-long-double = true;
    };
    package = {
      specVersion = "1.24";
      identifier = { name = "rounded-hw"; version = "0.2.0"; };
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
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
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
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.x87-long-double && (system.isI386 || system.isX86_64)) (hsPkgs."long-double" or (errorHandler.buildDepError "long-double"))) ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"));
        buildable = true;
      };
      tests = {
        "rounded-hw-doctests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "rounded-hw-test" = {
          depends = ([
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."rounded-hw" or (errorHandler.buildDepError "rounded-hw"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
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
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."rounded-hw" or (errorHandler.buildDepError "rounded-hw"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }