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
      specVersion = "1.6";
      identifier = { name = "yi-fuzzy-open"; version = "0.1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "https://github.com/yi-editor/yi-fuzzy-open";
      url = "";
      synopsis = "Fuzzy open plugin for Yi.";
      description = "This plugin tries to do what ctrl-p does for vim and helm does for emacs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."yi" or (errorHandler.buildDepError "yi"))
          (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          ];
        buildable = true;
        };
      };
    }