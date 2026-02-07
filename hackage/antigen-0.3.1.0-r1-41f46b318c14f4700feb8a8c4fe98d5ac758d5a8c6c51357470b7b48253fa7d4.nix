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
      identifier = { name = "antigen"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "2026 Input Output Global Inc (IOG)";
      maintainer = "hackage@iohk.io";
      author = "IOG Ledger Team";
      homepage = "";
      url = "";
      synopsis = "Fault injection for QuickCheck";
      description = "AntiGen extends QuickCheck to allow injecting random faults into QuickCheck \ngenerators.\n.\nIt introduces the `AntiGen` monad, a drop-in replacement for `Gen` that allows \ndevelopers to define negative generators alongside their standard \npositive generators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."quickcheck-transformer" or (errorHandler.buildDepError "quickcheck-transformer"))
        ];
        buildable = true;
      };
      tests = {
        "antigen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."antigen" or (errorHandler.buildDepError "antigen"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-transformer" or (errorHandler.buildDepError "quickcheck-transformer"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."antigen" or (errorHandler.buildDepError "antigen"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-transformer" or (errorHandler.buildDepError "quickcheck-transformer"))
          ];
          buildable = true;
        };
      };
    };
  }