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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "isbn"; version = "1.1.0.5"; };
      license = "Apache-2.0";
      copyright = "© 2024 Christian Charukiewicz";
      maintainer = "charukiewicz@protonmail.com";
      author = "Christian Charukiewicz";
      homepage = "https://github.com/charukiewicz/hs-isbn";
      url = "";
      synopsis = "ISBN Validation and Manipulation";
      description = "See the README at <https://github.com/charukiewicz/hs-isbn#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "isbn-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."isbn" or (errorHandler.buildDepError "isbn"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }