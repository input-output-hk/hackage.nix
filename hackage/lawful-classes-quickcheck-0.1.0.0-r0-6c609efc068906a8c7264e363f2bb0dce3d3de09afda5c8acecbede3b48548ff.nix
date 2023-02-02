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
      identifier = { name = "lawful-classes-quickcheck"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2023, Nicolas Trangez";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "https://github.com/NicolasT/lawful-classes";
      url = "";
      synopsis = "QuickCheck support for lawful-classes";
      description = "Support code to check @lawful-classes@ laws using QuickCheck and,\noptionally, Tasty.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lawful-classes-types" or (errorHandler.buildDepError "lawful-classes-types"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
        buildable = true;
        };
      };
    }