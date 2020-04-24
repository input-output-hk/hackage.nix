{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "happindicator"; version = "0.0.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2011 the authors";
      maintainer = "";
      author = "Andrew Miller; some parts derived from Gtk2hs by Axel Simon, Duncan Coutts and many others";
      homepage = "";
      url = "";
      synopsis = "Binding to the appindicator library.";
      description = "libappindicator is a library for setting up indicator items and menus on indicator panels, as used in the Unity environment in Ubuntu. This binding allows libappindicator to be used from Haskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"));
        pkgconfig = [
          (pkgconfPkgs."appindicator-0.1" or ((hsPkgs.pkgs-errors).pkgConfDepError "appindicator-0.1"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }