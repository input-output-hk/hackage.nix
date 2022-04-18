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
      specVersion = "2.4";
      identifier = { name = "lucid-aria"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2022 Robert Helgesson";
      maintainer = "robert@rycee.net";
      author = "Robert Helgesson";
      homepage = "https://git.sr.ht/~rycee/lucid-aria";
      url = "";
      synopsis = "Provides ARIA attributes for Lucid templates";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "lucid-aria-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-aria" or (errorHandler.buildDepError "lucid-aria"))
            ];
          buildable = true;
          };
        };
      };
    }