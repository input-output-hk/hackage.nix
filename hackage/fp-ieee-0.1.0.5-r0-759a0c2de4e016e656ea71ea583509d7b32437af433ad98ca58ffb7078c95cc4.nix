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
      sse4_1 = false;
      fma3 = false;
      f16c = false;
      float128 = false;
      half = false;
      integer-gmp = true;
      ghc-bignum = true;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "fp-ieee"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2020-2024 ARATA Mizuki";
      maintainer = "minorinoki@gmail.com";
      author = "ARATA Mizuki";
      homepage = "https://github.com/minoki/haskell-floating-point#readme";
      url = "";
      synopsis = "IEEE 754-2019 compliant operations";
      description = "Please see the README on GitHub at <https://github.com/minoki/haskell-floating-point/tree/master/fp-ieee#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
        ] ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"))) ++ pkgs.lib.optional (flags.half) (hsPkgs."half" or (errorHandler.buildDepError "half"))) ++ pkgs.lib.optional (flags.integer-gmp && (compiler.isGhc && compiler.version.lt "9.0.0")) (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))) ++ pkgs.lib.optional (flags.ghc-bignum && (compiler.isGhc && compiler.version.ge "9.0.0")) (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"));
        buildable = true;
      };
      tests = {
        "fp-ieee-doctests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"))) ++ pkgs.lib.optional (flags.half) (hsPkgs."half" or (errorHandler.buildDepError "half"));
          buildable = if compiler.isGhc && compiler.version.ge "9.12"
            then false
            else true;
        };
        "fp-ieee-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"))) ++ pkgs.lib.optional (flags.half) (hsPkgs."half" or (errorHandler.buildDepError "half"));
          buildable = true;
        };
      };
      benchmarks = {
        "fp-ieee-benchmark" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fp-ieee" or (errorHandler.buildDepError "fp-ieee"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ] ++ pkgs.lib.optional (flags.float128) (hsPkgs."float128" or (errorHandler.buildDepError "float128"))) ++ pkgs.lib.optional (flags.half) (hsPkgs."half" or (errorHandler.buildDepError "half"));
          buildable = true;
        };
      };
    };
  }