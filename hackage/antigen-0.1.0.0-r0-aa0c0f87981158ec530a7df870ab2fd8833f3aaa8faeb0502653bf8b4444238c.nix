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
      identifier = { name = "antigen"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2026 Input Output Global Inc (IOG)";
      maintainer = "hackage@iohk.io";
      author = "IOG Ledger Team";
      homepage = "";
      url = "";
      synopsis = "Negatable QuickCheck generators ";
      description = "AntiGen is a library that helps with generating negative examples from a \nQuickCheck generator. The `AntiGen` monad is designed to be similar to the\n`Gen` monad, so that migrating the generators would be as frictionless as \npossible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
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