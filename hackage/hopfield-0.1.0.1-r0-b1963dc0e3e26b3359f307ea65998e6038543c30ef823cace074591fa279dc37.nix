{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hopfield"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2012 Mihaela Rosca, Lukasz Severyn, Niklas Hambuechen, Razvan Marinescu, Wael Al Jisihi";
      maintainer = "Niklas Hambuechen <mail@nh2.me>";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
          (hsPkgs."exact-combinatorics" or (errorHandler.buildDepError "exact-combinatorics"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."probability" or (errorHandler.buildDepError "probability"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."rvar" or (errorHandler.buildDepError "rvar"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        libs = [
          (pkgs."MagickWand" or (errorHandler.sysDepError "MagickWand"))
          (pkgs."MagickCore" or (errorHandler.sysDepError "MagickCore"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "experiment" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hopfield" or (errorHandler.buildDepError "hopfield"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
        "recognize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hopfield" or (errorHandler.buildDepError "hopfield"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hopfield" or (errorHandler.buildDepError "hopfield"))
            (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."exact-combinatorics" or (errorHandler.buildDepError "exact-combinatorics"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
          buildable = true;
        };
      };
    };
  }