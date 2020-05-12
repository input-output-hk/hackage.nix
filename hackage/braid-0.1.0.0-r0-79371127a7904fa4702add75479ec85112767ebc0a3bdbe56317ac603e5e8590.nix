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
      identifier = { name = "braid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016, Adam Saltz";
      maintainer = "saltz.adam@gmail.com";
      author = "Adam Saltz";
      homepage = "http://github.com/githubuser/braid#readme";
      url = "";
      synopsis = "Types and functions to work with braids and Khovanov homology.";
      description = "A library to work with [braids](https://en.wikipedia.org/wiki/Braid_theory) and [Khovanov homology](https://en.wikipedia.org/wiki/Khovanov_homology).  The main focus of the package is computing (the braid invariant \\kappa)[http://arxiv.org/abs/1507.06263] defined by (the package author)[adamsaltz.com] and (Diana Hubbard)[https://sites.google.com/site/dianadhubbard/].\nBraids are encoded by their index/width and a word in the standard [Artin generators](https://en.wikipedia.org/wiki/Braid_group#Generators_and_relations).  To represent the 4-strand braid \\sigma_1\\sigma_2\\sigma^(-1)_3 use\n\n> Braid [1,2,-3] 4\n\nThe function 'computeKappa' in the module `Kappa` returns 'Just kappa' if kappa is finite and 'Nothing' otherwise.  More helper functions for working with Khovanov homology and reduced Khovanov homology will be included soon.\n\nThe module 'Braiddiagrams' creates diagrams for braids, their closures, and their resolutions.  E.g. to dra\n\nThe executable 'KappaView' draws the pre-images of the (transverse invariant \\psi)[http://arxiv.org/abs/math/0412184] with lowest k-grading.  The minus-labeled components are indicated by dots.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-contrib" or (errorHandler.buildDepError "diagrams-contrib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          ];
        buildable = true;
        };
      exes = {
        "KappaView" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-contrib" or (errorHandler.buildDepError "diagrams-contrib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            ];
          buildable = true;
          };
        };
      };
    }