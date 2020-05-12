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
    flags = { small_base = true; use_xft = true; testing = false; };
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "xmonad-contrib-bluetilebranch";
        version = "0.8.1.3";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org/";
      url = "";
      synopsis = "Third party extensions for xmonad";
      description = "This is a modified version of xmonad-contrib used by Bluetile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."xmonad-bluetilebranch" or (errorHandler.buildDepError "xmonad-bluetilebranch"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optionals (flags.use_xft) [
          (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }