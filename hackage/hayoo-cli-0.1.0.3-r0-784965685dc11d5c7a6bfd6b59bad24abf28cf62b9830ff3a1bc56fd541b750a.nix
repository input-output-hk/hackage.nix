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
      specVersion = "1.10";
      identifier = { name = "hayoo-cli"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "gonzih@gmail.com";
      author = "Max Gonzih";
      homepage = "https://github.com/Gonzih/hayoo-cli";
      url = "";
      synopsis = "Hayoo CLI";
      description = "Simple console client for hayoo.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hayoo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ];
          buildable = true;
          };
        };
      };
    }