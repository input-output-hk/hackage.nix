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
      identifier = { name = "hexpress"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "linuxbash8@gmail.com";
      author = "Alec Snyder";
      homepage = "https://github.com/allonsy/hexpress";
      url = "";
      synopsis = "An express-like http framework";
      description = "Hexpress is an express like http framework to make it easy to write http servers. It is built on the warp http and is blazing fast. See the github readme for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
        ];
        buildable = true;
      };
    };
  }