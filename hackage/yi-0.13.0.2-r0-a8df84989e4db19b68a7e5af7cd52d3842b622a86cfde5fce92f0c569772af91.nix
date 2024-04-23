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
      identifier = { name = "yi"; version = "0.13.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."yi-core" or (errorHandler.buildDepError "yi-core"))
            (hsPkgs."yi-frontend-vty" or (errorHandler.buildDepError "yi-frontend-vty"))
            (hsPkgs."yi-keymap-emacs" or (errorHandler.buildDepError "yi-keymap-emacs"))
            (hsPkgs."yi-mode-haskell" or (errorHandler.buildDepError "yi-mode-haskell"))
            (hsPkgs."yi-mode-javascript" or (errorHandler.buildDepError "yi-mode-javascript"))
            (hsPkgs."yi-misc-modes" or (errorHandler.buildDepError "yi-misc-modes"))
          ];
          buildable = true;
        };
      };
    };
  }