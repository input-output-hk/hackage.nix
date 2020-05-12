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
      identifier = { name = "yi-keymap-emacs"; version = "0.13.6"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Emacs keymap for Yi editor";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."oo-prototypes" or (errorHandler.buildDepError "oo-prototypes"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."yi-core" or (errorHandler.buildDepError "yi-core"))
          (hsPkgs."yi-misc-modes" or (errorHandler.buildDepError "yi-misc-modes"))
          (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          ];
        buildable = true;
        };
      };
    }