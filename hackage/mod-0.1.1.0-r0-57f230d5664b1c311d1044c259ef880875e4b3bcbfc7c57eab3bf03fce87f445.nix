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
    flags = { semirings = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mod"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2019 Andrew Lelechenko";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      homepage = "https://github.com/Bodigrim/mod";
      url = "";
      synopsis = "Fast type-safe modular arithmetic";
      description = "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,\npromoting moduli to the type level, with an emphasis on performance.\nOriginally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ] ++ (pkgs.lib).optional (flags.semirings) (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"));
        buildable = true;
        };
      tests = {
        "mod-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."quickcheck-classes-base" or (errorHandler.buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optionals (flags.semirings) [
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mod-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }