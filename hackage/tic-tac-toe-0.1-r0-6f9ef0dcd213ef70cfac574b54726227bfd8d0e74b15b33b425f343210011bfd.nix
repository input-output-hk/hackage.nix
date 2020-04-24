{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "tic-tac-toe"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "asenov79@students.rowan.edu";
      author = "Hristo Asenov";
      homepage = "http://ecks.homeunix.net";
      url = "";
      synopsis = "Useful if reading \"Why FP matters\" by John Hughes";
      description = "An attempt to implement the minimax algorithm using tic-tac-toe";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tic-tac-toe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }