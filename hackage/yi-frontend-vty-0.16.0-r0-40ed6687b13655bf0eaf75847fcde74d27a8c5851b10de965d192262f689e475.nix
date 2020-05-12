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
      identifier = { name = "yi-frontend-vty"; version = "0.16.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Vty frontend for Yi editor";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."yi-core" or (errorHandler.buildDepError "yi-core"))
          (hsPkgs."yi-language" or (errorHandler.buildDepError "yi-language"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          ];
        buildable = true;
        };
      };
    }