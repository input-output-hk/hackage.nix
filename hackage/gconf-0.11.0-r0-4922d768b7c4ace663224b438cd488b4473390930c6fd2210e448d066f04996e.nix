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
      identifier = { name = "gconf"; version = "0.11.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the GNOME configuration database system.";
      description = "GConf is a configuration database system for storing application\npreferences. It supports default or mandatory settings set by the\nadministrator, and changes to the database are instantly applied to all\nrunning applications. It is written for the GNOME desktop but doesn't\nrequire it.";
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
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gconf-2.0" or (errorHandler.pkgConfDepError "gconf-2.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs.components.exes.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs:gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator.components.exes.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator:gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen.components.exes.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen:gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }