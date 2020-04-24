{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "left4deadrl"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "left4dead-inspired roguelike";
      description = "a zombie game written with hscharm";
      buildType = "Simple";
      };
    components = {
      exes = {
        "left4deadrl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."hscharm" or ((hsPkgs.pkgs-errors).buildDepError "hscharm"))
            ];
          buildable = true;
          };
        };
      };
    }