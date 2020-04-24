{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gi-gtk-declarative-app-simple";
        version = "0.6.0";
        };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "https://owickstrom.github.io/gi-gtk-declarative/";
      url = "";
      synopsis = "Declarative GTK+ programming in Haskell in the style of Pux.";
      description = "Experimental application architecture in the style of\nPureScript Pux, built on top of gi-gtk-declarative.\nSee [the project website](https://owickstrom.github.io/gi-gtk-declarative/)\nfor user guides and more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."gi-gobject" or ((hsPkgs.pkgs-errors).buildDepError "gi-gobject"))
          (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
          (hsPkgs."haskell-gi" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."haskell-gi-overloading" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-overloading"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or ((hsPkgs.pkgs-errors).buildDepError "pipes-concurrency"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."gi-gtk-declarative" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-declarative"))
          ];
        buildable = true;
        };
      };
    }