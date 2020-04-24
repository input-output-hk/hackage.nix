{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "general-games"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Christopher A. Gorski";
      maintainer = "cgorski@cgorski.org";
      author = "Christopher A. Gorski";
      homepage = "https://github.com/cgorski/general-games";
      url = "";
      synopsis = "Library supporting simulation of a number of games";
      description = "Library providing framework for simulating outcomes of a variety\nof games, including Poker.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."permutation" or ((hsPkgs.pkgs-errors).buildDepError "permutation"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      tests = {
        "general-games-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."general-games" or ((hsPkgs.pkgs-errors).buildDepError "general-games"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }