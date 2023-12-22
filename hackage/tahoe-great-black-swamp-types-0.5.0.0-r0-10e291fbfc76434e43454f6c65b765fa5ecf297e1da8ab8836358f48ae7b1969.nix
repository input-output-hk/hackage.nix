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
      identifier = {
        name = "tahoe-great-black-swamp-types";
        version = "0.5.0.0";
        };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "exarkun@twistedmatrix.com";
      author = "Jean-Paul Calderone";
      homepage = "";
      url = "";
      synopsis = "Types related to implementation of a Tahoe-LAFS Great Black Swamp server";
      description = "Types used by the server provided by `tahoe-great-black-swamp` as\nwell as any implementation of a storage backend for use by that\nserver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }