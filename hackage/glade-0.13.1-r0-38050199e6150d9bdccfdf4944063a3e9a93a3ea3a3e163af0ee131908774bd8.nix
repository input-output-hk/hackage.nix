{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "glade"; version = "0.13.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team, 2016 C Maeder";
      maintainer = "chr.maeder@web.de";
      author = "Manuel M T Chakravarty, Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the glade library.";
      description = "This library allows to load externally stored user interfaces into\nprograms. This allows alteration of the interface without recompilation\nof the program.\n\nNote that this functionality is now provided in gtk directly\n(as of version 2.12 of the gtk+ C lib) by the\nGraphics.UI.Gtk.Builder module.";
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
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libglade-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "libglade-2.0"))
          ];
        buildable = true;
        };
      };
    }