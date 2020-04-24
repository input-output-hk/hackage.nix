{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hyahtzee"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "damien.cassou@gmail.com";
      author = "Damien Cassou";
      homepage = "http://github.com/DamienCassou/HYahtzee";
      url = "";
      synopsis = "A Yahtzee game implementation in Haskell";
      description = "The classic dice game Yahtzee implemented in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hyahtzee" = {
          depends = [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }