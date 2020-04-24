{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "gtk-mac-integration"; version = "0.3.4.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts, Peter Gavin, Axel Simon, Hamish Mackenzie";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Bindings for the Gtk/OS X integration library.";
      description = "gtk-mac-integration helps integrate Gtk applications with the native Mac\ndesktop and make it feel more like a Mac application.\nhttp://sourceforge.net/apps/trac/gtk-osx/wiki/Integrate";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.gtk2hs-buildtools or (pkgs.buildPackages.gtk2hs-buildtools or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hs-buildtools")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk-mac-integration-gtk2" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk-mac-integration-gtk2"))
          ];
        buildable = true;
        };
      };
    }