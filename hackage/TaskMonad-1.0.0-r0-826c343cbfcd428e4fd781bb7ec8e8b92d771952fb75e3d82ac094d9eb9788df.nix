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
      identifier = { name = "TaskMonad"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "max@magorsch.de";
      author = "Max Magorsch";
      homepage = "https://taskmonad.magorsch.de";
      url = "";
      synopsis = "A collection of tools which can be used to access taskwarrior from xmonad.";
      description = "TaskMonad is a collection of tools which can be used to access taskwarrior from xmonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          ];
        buildable = true;
        };
      };
    }