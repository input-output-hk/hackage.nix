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
    flags = { emacs = true; pango = true; vim = true; vty = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yi"; version = "0.14.1"; };
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
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."yi-core" or (errorHandler.buildDepError "yi-core"))
            (hsPkgs."yi-misc-modes" or (errorHandler.buildDepError "yi-misc-modes"))
            (hsPkgs."yi-mode-haskell" or (errorHandler.buildDepError "yi-mode-haskell"))
            (hsPkgs."yi-mode-javascript" or (errorHandler.buildDepError "yi-mode-javascript"))
            (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          ] ++ pkgs.lib.optional (flags.vty) (hsPkgs."yi-frontend-vty" or (errorHandler.buildDepError "yi-frontend-vty"))) ++ pkgs.lib.optional (flags.pango) (hsPkgs."yi-frontend-pango" or (errorHandler.buildDepError "yi-frontend-pango"))) ++ pkgs.lib.optional (flags.vim) (hsPkgs."yi-keymap-vim" or (errorHandler.buildDepError "yi-keymap-vim"))) ++ pkgs.lib.optional (flags.emacs) (hsPkgs."yi-keymap-emacs" or (errorHandler.buildDepError "yi-keymap-emacs"));
          buildable = true;
        };
      };
    };
  }