let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."erf" or (buildDepError "erf"))
          (hsPkgs."exact-combinatorics" or (buildDepError "exact-combinatorics"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."probability" or (buildDepError "probability"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-fu" or (buildDepError "random-fu"))
          (hsPkgs."rvar" or (buildDepError "rvar"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        libs = [
          (pkgs."MagickWand" or (sysDepError "MagickWand"))
          (pkgs."MagickCore" or (sysDepError "MagickCore"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      exes = {
        "experiment" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hopfield" or (buildDepError "hopfield"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          };
        "recognize" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hopfield" or (buildDepError "hopfield"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hopfield" or (buildDepError "hopfield"))
            (hsPkgs."erf" or (buildDepError "erf"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."exact-combinatorics" or (buildDepError "exact-combinatorics"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            ];
          };
        };
      };
    }