{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "happindicator3"; version = "0.2.1"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "mlacorte365@gmail.com";
      author = "Michael LaCorte";
      homepage = "https://github.com/mlacorte/happindicator3";
      url = "";
      synopsis = "Binding to the appindicator library.";
      description = "libappindicator is a library for setting up indicator\nitems and menus on indicator panels, as used in the\nUnity environment in Ubuntu. This binding allows\nlibappindicator to be used from Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
          ];
        pkgconfig = [
          (pkgconfPkgs."appindicator3-0.1" or ((hsPkgs.pkgs-errors).pkgConfDepError "appindicator3-0.1"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
            (hsPkgs."happindicator3" or ((hsPkgs.pkgs-errors).buildDepError "happindicator3"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }