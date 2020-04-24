{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "soegtk"; version = "0.11.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Duncan Coutts, Paul Liu";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "GUI functions as used in the book \"The Haskell School of Expression\".";
      description = "An alternative implementation of the graphics library used in the book The Haskell\nSchool of Expression, by Paul Hudak, <http://www.haskell.org/soe/\nThis library builds on top of Gtk+.";
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
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-2.0"))
          ];
        buildable = true;
        };
      };
    }