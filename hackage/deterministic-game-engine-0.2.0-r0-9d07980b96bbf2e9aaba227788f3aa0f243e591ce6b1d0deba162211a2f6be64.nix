{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "deterministic-game-engine"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tydotg@gmail.com";
      author = "Tyler Olson";
      homepage = "https://github.com/TGOlson/deterministic-game-engine";
      url = "";
      synopsis = "Simple deterministic game engine";
      description = "Haskell library for creating simple deterministic games,\nsuch as tic-tac-toe. The engine requires a minimal set of\nactions related to the game, and then will run the game\nuntil a terminal state is reached.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."deterministic-game-engine" or ((hsPkgs.pkgs-errors).buildDepError "deterministic-game-engine"))
            ];
          buildable = true;
          };
        };
      };
    }