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
      specVersion = "1.12";
      identifier = { name = "wikimusic-api-spec"; version = "1.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2023 Josep Bigorra";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "Josep Bigorra";
      homepage = "https://gitlab.com/jjba-projects/wikimusic-api-spec";
      url = "";
      synopsis = "";
      description = "Please see the README at <https://gitlab.com/jjba-projects/wikimusic-api-spec>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-openapi3" or (errorHandler.buildDepError "servant-openapi3"))
          (hsPkgs."servant-rate-limit" or (errorHandler.buildDepError "servant-rate-limit"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wikimusic-model-hs" or (errorHandler.buildDepError "wikimusic-model-hs"))
        ];
        buildable = true;
      };
    };
  }