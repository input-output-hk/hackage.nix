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
      identifier = { name = "jsonextfilter"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "MackeyRMS";
      author = "Daniel Choi";
      homepage = "https://github.com/mackeyrms/jsonextfilter#readme";
      url = "";
      synopsis = "Filter select values in JSON objects to unix programs";
      description = "Filter select values in JSON objects to unix programs";
      buildType = "Simple";
      };
    components = {
      exes = {
        "jsonextfilter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            ];
          buildable = true;
          };
        };
      };
    }