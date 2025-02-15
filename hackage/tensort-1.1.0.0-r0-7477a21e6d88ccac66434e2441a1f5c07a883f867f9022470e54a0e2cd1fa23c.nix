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
      specVersion = "3.4";
      identifier = { name = "tensort"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "2024 Kyle Beechly";
      maintainer = "contact@kaBeech.com";
      author = "Kyle Beechly";
      homepage = "https://github.com/kaBeech/tensort";
      url = "";
      synopsis = "Tunable sorting for responsive robustness and beyond";
      description = "A tunable tensor-based structure for sorting algorithms \nalong with various sample configurations. Birthed from an \nexploration of robustness in sorting algorithms, inspired\nby [Beyond Efficiency](https://www.cs.unm.edu/~ackley/be-201301131528.pdf) \nby David H. Ackley and \n[Beyond Efficiency by Dave Ackley](https://futureofcoding.org/episodes/070) \nby Future of Coding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
        ];
        buildable = true;
      };
      exes = {
        "tensort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tensort" or (errorHandler.buildDepError "tensort"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tensort-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tensort" or (errorHandler.buildDepError "tensort"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }