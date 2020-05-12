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
      identifier = { name = "sparql-protocol"; version = "1.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Ariel David Moya Sequeira";
      maintainer = "ardamose123@gmail.com";
      author = "Ariel David Moya Sequeira";
      homepage = "https://github.com/ardamose123/sparql-protocol";
      url = "";
      synopsis = "An SPARQL 1.1 Protocol client library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ];
        buildable = true;
        };
      tests = {
        "sparql-protocol-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sparql-protocol" or (errorHandler.buildDepError "sparql-protocol"))
            ];
          buildable = true;
          };
        };
      };
    }