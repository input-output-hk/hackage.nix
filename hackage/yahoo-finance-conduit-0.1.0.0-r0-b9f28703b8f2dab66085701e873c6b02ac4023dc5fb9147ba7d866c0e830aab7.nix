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
      identifier = { name = "yahoo-finance-conduit"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann <mail@agrafix.net>";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "";
      url = "";
      synopsis = "Streaming aproach to the yahoo finance api";
      description = "Small library streaming stock market data from the yahoo finance api";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      };
    }