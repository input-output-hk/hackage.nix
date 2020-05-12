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
      identifier = { name = "burnt-explorer"; version = "1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "krzysztof.jurewicz@gmail.com";
      author = "Krzysztof Jurewicz";
      homepage = "https://gitlab.com/KrzysiekJ/burnt-explorer";
      url = "";
      synopsis = "List OP_RETURN cryptocurrency transaction outputs.";
      description = "This unsophisticated application prints all OP_RETURN transaction\noutputs in a given block range.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "burnt-explorer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      };
    }