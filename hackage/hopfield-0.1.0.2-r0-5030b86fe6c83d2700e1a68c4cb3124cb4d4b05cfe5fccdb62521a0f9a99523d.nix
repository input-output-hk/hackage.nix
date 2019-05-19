{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hopfield"; version = "0.1.0.2"; };
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
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.array)
          (hsPkgs.erf)
          (hsPkgs.exact-combinatorics)
          (hsPkgs.hmatrix)
          (hsPkgs.MonadRandom)
          (hsPkgs.probability)
          (hsPkgs.random)
          (hsPkgs.random-fu)
          (hsPkgs.rvar)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.deepseq)
          (hsPkgs.monad-loops)
          (hsPkgs.split)
          ];
        libs = [ (pkgs."MagickWand") (pkgs."MagickCore") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      exes = {
        "experiment" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hopfield)
            (hsPkgs.optparse-applicative)
            ];
          };
        "recognize" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hopfield)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.vector)
            (hsPkgs.optparse-applicative)
            (hsPkgs.JuicyPixels)
            (hsPkgs.directory)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hopfield)
            (hsPkgs.erf)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.MonadRandom)
            (hsPkgs.random)
            (hsPkgs.exact-combinatorics)
            (hsPkgs.parallel)
            ];
          };
        };
      };
    }