{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hopfield"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2012 Mihaela Rosca, Lukasz Severyn, Niklas Hambuechen, Razvan Marinescu, Wael Al Jisihi";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Mihaela Rosca, Lukasz Severyn, Niklas Hambuechen, Razvan Marinescu, Wael Al Jisihi";
      homepage = "https://github.com/imperialhopfield/hopfield";
      url = "";
      synopsis = "Hopfield Networks, Boltzmann Machines and Clusters";
      description = "Attractor Neural Networks for Modelling Associative Memory\n\nReport: <https://github.com/imperialhopfield/hopfield/raw/master/report/report.pdf>\n\nA third year group project at Imperial College London,\nsupervised by Prof. Abbas Edalat.\n\nThis projects implements:\n\n* Hopfield Networks\n\n* Clusters and Super Attractors\n\n* The Restricted Boltzmann Machine\n\n* A Boltzmann Machine for classification\n\nand comes with a range of experiments to evaluate their properties.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
          (hsPkgs."exact-combinatorics" or ((hsPkgs.pkgs-errors).buildDepError "exact-combinatorics"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."probability" or ((hsPkgs.pkgs-errors).buildDepError "probability"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."rvar" or ((hsPkgs.pkgs-errors).buildDepError "rvar"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        libs = [
          (pkgs."MagickWand" or ((hsPkgs.pkgs-errors).sysDepError "MagickWand"))
          (pkgs."MagickCore" or ((hsPkgs.pkgs-errors).sysDepError "MagickCore"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "experiment" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hopfield" or ((hsPkgs.pkgs-errors).buildDepError "hopfield"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "recognize" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hopfield" or ((hsPkgs.pkgs-errors).buildDepError "hopfield"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hopfield" or ((hsPkgs.pkgs-errors).buildDepError "hopfield"))
            (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."exact-combinatorics" or ((hsPkgs.pkgs-errors).buildDepError "exact-combinatorics"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            ];
          buildable = true;
          };
        };
      };
    }