{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { new-exception = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "pango"; version = "0.11.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Axel Simon, Duncan Coutts";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Pango text rendering engine.";
      description = "This package provides a wrapper around the Pango C library that\nallows high-quality rendering of Unicode text. It can be used\neither with Cairo to output text in PDF, PS or other\ndocuments or with Gtk+ to display text on-screen.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        pkgconfig = [
          (pkgconfPkgs."pango" or ((hsPkgs.pkgs-errors).pkgConfDepError "pango"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }