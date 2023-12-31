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
      identifier = { name = "hoauth2-providers-tutorial"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "freizl@gmail.com";
      author = "Haisheng Wu (M)";
      homepage = "";
      url = "";
      synopsis = "tutorial for hoauth2-providers module";
      description = "A tutorial that demostrates how to use hoauth2-providers package\nfor OAuth2 Authorization Code flow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          (hsPkgs."hoauth2-providers" or (errorHandler.buildDepError "hoauth2-providers"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "hoauth2-providers-tutorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hoauth2-providers-tutorial" or (errorHandler.buildDepError "hoauth2-providers-tutorial"))
            ];
          buildable = true;
          };
        };
      };
    }