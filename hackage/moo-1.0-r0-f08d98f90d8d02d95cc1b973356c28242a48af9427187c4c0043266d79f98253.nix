{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "moo"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "Sergey Astanin <s.astanin@gmail.com>";
      homepage = "http://www.github.com/astanin/moo/";
      url = "";
      synopsis = "Genetic algorithm library";
      description = "Moo library provides building blocks to build custom\ngenetic algorithms in Haskell. They can be used to\nfind solutions to optimization and search problems.\n\nVariants supported out of the box: binary (using\nbit-strings) and continuous (real-coded).\nPotentially supported variants: permutation,\ntree, hybrid encodings (require customizations).\n\nBinary GAs: binary and Gray encoding; point mutation;\none-point, two-point, and uniform crossover.\nContinuous GAs: Gaussian mutation; BLX-α, UNDX, and\nSBX crossover.\nSelection operators: roulette, and tournament;\nwith optional niching and scaling.\nReplacement strategies: generational with elitism\nand steady state.\nConstrained optimization: random constrained\ninitialization, death penalty, constrained\nselection without a penalty function.\nMulti-objective optimization: NSGA-II\nand constrained NSGA-II.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."gray-code" or ((hsPkgs.pkgs-errors).buildDepError "gray-code"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "moo-tests" = {
          depends = [
            (hsPkgs."moo" or ((hsPkgs.pkgs-errors).buildDepError "moo"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."gray-code" or ((hsPkgs.pkgs-errors).buildDepError "gray-code"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }