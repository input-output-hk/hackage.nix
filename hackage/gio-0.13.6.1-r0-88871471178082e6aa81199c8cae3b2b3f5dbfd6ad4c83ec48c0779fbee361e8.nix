{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "gio"; version = "0.13.6.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Peter Gavin, Andy Stewart";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to GIO";
      description = "GIO is striving to provide a modern, easy-to-use VFS API that sits at the right level in the library stack.\nThe goal is to overcome the shortcomings of GnomeVFS and provide an API that is\nso good that developers prefer it over raw POSIX calls.\nAmong other things that means using GObject.\nIt also means not cloning the POSIX API, but providing higher-level, document-centric interfaces.";
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
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gio-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gio-2.0"))
          ];
        buildable = true;
        };
      };
    }