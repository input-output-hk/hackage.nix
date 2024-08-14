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
      identifier = { name = "wikimusic-model-hs"; version = "1.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2023 Josep Bigorra";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "Josep Bigorra";
      homepage = "https://gitlab.com/jjba-projects/wikimusic-model-hs";
      url = "";
      synopsis = "";
      description = "Please see the README at <https://gitlab.com/jjba-projects/wikimusic-model-hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."keuringsdienst" or (errorHandler.buildDepError "keuringsdienst"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."password" or (errorHandler.buildDepError "password"))
          (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
        ];
        buildable = true;
      };
    };
  }