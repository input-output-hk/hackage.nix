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
      specVersion = "1.12";
      identifier = { name = "tasty-hunit-compat"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "2020 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "Tasty integration with the existing HUnit package.";
      description = "Existing `tasty-hunit` package now declares its own testing primitives. This package provides an integration of the existing HUnit package with Tasty that inter-operates properly with other HUnit code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
        buildable = true;
        };
      };
    }