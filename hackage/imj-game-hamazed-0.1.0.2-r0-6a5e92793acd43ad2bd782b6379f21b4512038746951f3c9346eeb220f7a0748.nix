{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "imj-game-hamazed"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 - 2018 Olivier Sohn";
      maintainer = "olivier.sohn@gmail.com";
      author = "Olivier Sohn";
      homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-game-hamazed//README.md";
      url = "";
      synopsis = "A game with flying numbers and 8-bit color animations.";
      description = "In Hamazed, you are a 'BattleShip' pilot surrounded by flying 'Number's.\n\nYour mission is to shoot exactly the 'Number's whose sum will equate the\ncurrent 'Level' 's /target number/.\n\nThe higher the 'Level' (1..12), the more 'Number's are flying around (up-to 16).\nAnd the smaller the 'World' gets.\n\nGood luck !";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."imj-animation" or ((hsPkgs.pkgs-errors).buildDepError "imj-animation"))
          (hsPkgs."imj-animation" or ((hsPkgs.pkgs-errors).buildDepError "imj-animation"))
          (hsPkgs."imj-base" or ((hsPkgs.pkgs-errors).buildDepError "imj-base"))
          (hsPkgs."imj-prelude" or ((hsPkgs.pkgs-errors).buildDepError "imj-prelude"))
          ];
        buildable = true;
        };
      exes = {
        "imj-game-hamazed-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."imj-game-hamazed" or ((hsPkgs.pkgs-errors).buildDepError "imj-game-hamazed"))
            (hsPkgs."imj-prelude" or ((hsPkgs.pkgs-errors).buildDepError "imj-prelude"))
            ];
          buildable = true;
          };
        };
      tests = {
        "imj-game-hamazed-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."imj-base" or ((hsPkgs.pkgs-errors).buildDepError "imj-base"))
            (hsPkgs."imj-game-hamazed" or ((hsPkgs.pkgs-errors).buildDepError "imj-game-hamazed"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }