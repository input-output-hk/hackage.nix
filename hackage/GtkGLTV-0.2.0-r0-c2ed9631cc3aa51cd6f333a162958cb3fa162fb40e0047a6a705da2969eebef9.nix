{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "GtkGLTV"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "http://code.haskell.org/~conal/code/GtkGLTV";
      synopsis = "OpenGL support for Gtk-based GUIs for Tangible Values";
      description = "GtkGLTV adds OpenGL support to GtkTV, which is a Gtk back-end for\ntangible values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."GtkTV" or ((hsPkgs.pkgs-errors).buildDepError "GtkTV"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."gtkglext" or ((hsPkgs.pkgs-errors).buildDepError "gtkglext"))
          (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
          (hsPkgs."bitmap-opengl" or ((hsPkgs.pkgs-errors).buildDepError "bitmap-opengl"))
          (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
          ];
        buildable = true;
        };
      };
    }