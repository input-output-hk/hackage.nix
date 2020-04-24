{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-RnToRm-Plot"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2009 Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://www-users.aston.ac.uk/~konecnym/DISCERN";
      url = "";
      synopsis = "GL plotting of polynomial function enclosures (PFEs)";
      description = "This library extends AERN-RnToRm with support for plotting unary function enclosures\nin any GL context and a Gtk window for inspecting these enclosures.\n\nSimple examples of usage can be found in module @Demo.hs@ in folder @tests@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."AERN-Real" or ((hsPkgs.pkgs-errors).buildDepError "AERN-Real"))
          (hsPkgs."AERN-RnToRm" or ((hsPkgs.pkgs-errors).buildDepError "AERN-RnToRm"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."gtkglext" or ((hsPkgs.pkgs-errors).buildDepError "gtkglext"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
          ];
        buildable = true;
        };
      };
    }