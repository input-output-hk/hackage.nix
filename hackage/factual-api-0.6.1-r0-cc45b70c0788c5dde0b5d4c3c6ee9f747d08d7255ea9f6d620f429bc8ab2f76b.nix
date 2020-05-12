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
      specVersion = "1.8";
      identifier = { name = "factual-api"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Rudiger Lippert";
      maintainer = "Rudiger Lippert <rudy@factual.com>";
      author = "Rudiger Lippert <rudy@factual.com>";
      homepage = "https://github.com/rudyl313/factual-haskell-driver";
      url = "";
      synopsis = "A driver for the Factual API";
      description = "This is a driver for the Factual API. It provides a type-safe, easy way to\ngenerate queries, setup OAuth authentication and send queries to the API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."hoauth" or (errorHandler.buildDepError "hoauth"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }