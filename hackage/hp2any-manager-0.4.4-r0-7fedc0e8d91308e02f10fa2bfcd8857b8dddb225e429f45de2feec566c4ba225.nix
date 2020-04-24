{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hp2any-manager"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011, Patai Gergely";
      maintainer = "Patai Gergely (patai.gergely@gmail.com)";
      author = "Patai Gergely";
      homepage = "http://www.haskell.org/haskellwiki/Hp2any";
      url = "";
      synopsis = "A utility to visualise and compare heap profiles.";
      description = "This is a program that can display several heap profiles at the same\ntime in the style of a tiling window manager.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hp2any-manager" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gtkglext" or ((hsPkgs.pkgs-errors).buildDepError "gtkglext"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hp2any-core" or ((hsPkgs.pkgs-errors).buildDepError "hp2any-core"))
            (hsPkgs."hp2any-graph" or ((hsPkgs.pkgs-errors).buildDepError "hp2any-graph"))
            ];
          buildable = true;
          };
        };
      };
    }