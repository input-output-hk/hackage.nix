{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HPlot"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov Z <iakovz@gmail.com>";
      author = "Yakov Z <iakovz@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A minimal monadic PLplot interface for Haskell";
      description = "This package provides simple monadic interface to the PLplot cross-platform software\npackage for creating scientific plots.\n\nPlplotCanvas widget is implemented to be compatible with gtk2hs. PLplot type class allows\naddition of other display drivers without need to adopt application code\n\nThe idea was that with the help of PLplotM monad it should be easy to make\nmore abstract interfaces and combinators to do plots\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."plplotd-gnome2" or ((hsPkgs.pkgs-errors).pkgConfDepError "plplotd-gnome2"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            ];
          pkgconfig = [
            (pkgconfPkgs."plplotd-gnome2" or ((hsPkgs.pkgs-errors).pkgConfDepError "plplotd-gnome2"))
            ];
          buildable = true;
          };
        };
      };
    }