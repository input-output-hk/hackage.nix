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
    flags = { semirings = true; vector = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mod"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017-2022 Andrew Lelechenko";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      homepage = "https://github.com/Bodigrim/mod";
      url = "";
      synopsis = "Fast type-safe modular arithmetic";
      description = "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,\npromoting moduli to the type level, with an emphasis on performance.\nOriginally part of the <https://hackage.haskell.org/package/arithmoi arithmoi> package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
        ] ++ pkgs.lib.optional (flags.semirings) (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))) ++ pkgs.lib.optionals (flags.vector) [
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "mod-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ] ++ pkgs.lib.optionals (flags.semirings) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          ]) ++ pkgs.lib.optionals (flags.vector) [
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "mod-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }