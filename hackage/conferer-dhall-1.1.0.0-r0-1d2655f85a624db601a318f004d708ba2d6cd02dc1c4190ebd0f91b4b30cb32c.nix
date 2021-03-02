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
      specVersion = "1.18";
      identifier = { name = "conferer-dhall"; version = "1.1.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020 Lucas David Traverso";
      maintainer = "lucas6246@gmail.com";
      author = "Lucas David Traverso";
      homepage = "https://conferer.ludat.io";
      url = "";
      synopsis = "Configuration for reading dhall files";
      description = "Library to abstract the parsing of many haskell config values from different config sources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
          (hsPkgs."conferer-aeson" or (errorHandler.buildDepError "conferer-aeson"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."dhall-json" or (errorHandler.buildDepError "dhall-json"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
            (hsPkgs."conferer-aeson" or (errorHandler.buildDepError "conferer-aeson"))
            (hsPkgs."conferer-dhall" or (errorHandler.buildDepError "conferer-dhall"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."dhall-json" or (errorHandler.buildDepError "dhall-json"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }