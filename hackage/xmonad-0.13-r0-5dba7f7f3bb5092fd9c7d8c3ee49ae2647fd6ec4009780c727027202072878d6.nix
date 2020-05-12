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
    flags = { testing = false; generatemanpage = false; profiling = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "xmonad"; version = "0.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xmonad@haskell.org";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "xmonad is a tiling window manager for X. Windows are arranged\nautomatically to tile the screen without gaps or overlap, maximising\nscreen use. All features of the window manager are accessible from\nthe keyboard: a mouse is strictly optional. xmonad is written and\nextensible in Haskell. Custom layout algorithms, and other\nextensions, may be written by the user in config files. Layouts are\napplied dynamically, and different layouts may be used on each\nworkspace. Xinerama is fully supported, allowing windows to be tiled\non several screens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          ];
        buildable = if flags.testing then false else true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            ];
          buildable = true;
          };
        "generatemanpage" = {
          depends = (pkgs.lib).optionals (flags.generatemanpage) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = if flags.generatemanpage then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      };
    }