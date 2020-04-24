{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtk3 = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "poppler"; version = "0.13.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2001-2012, 2014 The Gtk2Hs Team";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Andy Stewart";
      homepage = "http://projects.haskell.org/gtk2hs";
      url = "";
      synopsis = "Binding to the Poppler.";
      description = "Poppler is a fork of the xpdf PDF viewer, to provide PDF rendering functionality as a shared\nlibrary, to centralize the maintenance effort.\nAnd move to forward in a number of areas that don't fit within the goals of xpdf.";
      buildType = "Custom";
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
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
            ]
          else [
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            ]);
        pkgconfig = if flags.gtk3
          then [
            (pkgconfPkgs."poppler-glib" or ((hsPkgs.pkgs-errors).pkgConfDepError "poppler-glib"))
            (pkgconfPkgs."cairo" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo"))
            (pkgconfPkgs."gdk-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-3.0"))
            (pkgconfPkgs."pango" or ((hsPkgs.pkgs-errors).pkgConfDepError "pango"))
            ]
          else [
            (pkgconfPkgs."poppler-glib" or ((hsPkgs.pkgs-errors).pkgConfDepError "poppler-glib"))
            (pkgconfPkgs."gobject-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gobject-2.0"))
            (pkgconfPkgs."glib-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "glib-2.0"))
            (pkgconfPkgs."cairo" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo"))
            (pkgconfPkgs."gdk-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-2.0"))
            (pkgconfPkgs."gdk-pixbuf-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-pixbuf-2.0"))
            (pkgconfPkgs."pango" or ((hsPkgs.pkgs-errors).pkgConfDepError "pango"))
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