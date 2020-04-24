{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "showdown"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "DiscipleRayne@gmail.com";
      author = "Anthony Simpson";
      homepage = "";
      url = "";
      synopsis = "A simple gtk based Russian Roulette game.";
      description = "A Russian Roulette game written in Haskell\nUsing GTK2HS and Glade.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "showdown" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }