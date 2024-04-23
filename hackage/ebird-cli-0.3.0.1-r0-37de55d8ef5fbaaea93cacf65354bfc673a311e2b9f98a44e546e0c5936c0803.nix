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
      identifier = { name = "ebird-cli"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "2023 Finley McIlwaine";
      maintainer = "finleymcilwaine@gmail.com";
      author = "Finley McIlwaine";
      homepage = "https://github.com/FinleyMcIlwaine/ebird-haskell";
      url = "";
      synopsis = "A command-line utility for interacting with the\neBird API.";
      description = "A library containing the functions used to implement a command-line utility\nfor interacting with the\n[eBird API](https://documenter.getpostman.com/view/664302/S1ENwy59).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ebird-api" or (errorHandler.buildDepError "ebird-api"))
          (hsPkgs."ebird-client" or (errorHandler.buildDepError "ebird-client"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "ebird-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ebird-cli" or (errorHandler.buildDepError "ebird-cli"))
          ];
          buildable = true;
        };
      };
    };
  }