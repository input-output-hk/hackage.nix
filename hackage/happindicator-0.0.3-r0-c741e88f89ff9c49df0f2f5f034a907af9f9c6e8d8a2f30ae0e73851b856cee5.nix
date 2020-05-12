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
      specVersion = "1.6.0";
      identifier = { name = "happindicator"; version = "0.0.3"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2011 the authors";
      maintainer = "gtk2hs-devel@lists.sourceforge.net";
      author = "Andrew Miller <andrew@amxl.com>; some parts derived from Gtk2hs by Axel Simon, Duncan Coutts and many others";
      homepage = "";
      url = "";
      synopsis = "Binding to the appindicator library.";
      description = "libappindicator is a library for setting up indicator items and menus on indicator panels, as used in the Unity environment in Ubuntu. This binding allows libappindicator to be used from Haskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        pkgconfig = [
          (pkgconfPkgs."appindicator-0.1" or (errorHandler.pkgConfDepError "appindicator-0.1"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }