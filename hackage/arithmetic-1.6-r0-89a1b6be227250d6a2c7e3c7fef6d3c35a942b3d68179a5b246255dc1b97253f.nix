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
      specVersion = "1.8";
      identifier = { name = "arithmetic"; version = "1.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Natural number arithmetic";
      description = "This package implements a library of natural number arithmetic,\nincluding Montgomery multiplication, the Miller-Rabin primality\ntest, Lucas sequences, the Williams p+1 factorization method,\ncontinued fraction representations of natural number square roots,\nthe Jacobi symbol, the Tonelli-Shanks algorithm for finding square\nroots modulo a prime, and the Chakravala method for solving the Pell\nequation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
          (hsPkgs."opentheory-bits" or (errorHandler.buildDepError "opentheory-bits"))
          (hsPkgs."opentheory-divides" or (errorHandler.buildDepError "opentheory-divides"))
        ];
        buildable = true;
      };
      exes = {
        "arithmetic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
            (hsPkgs."opentheory-bits" or (errorHandler.buildDepError "opentheory-bits"))
            (hsPkgs."opentheory-divides" or (errorHandler.buildDepError "opentheory-divides"))
          ];
          buildable = true;
        };
      };
      tests = {
        "arithmetic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
            (hsPkgs."opentheory-bits" or (errorHandler.buildDepError "opentheory-bits"))
            (hsPkgs."opentheory-divides" or (errorHandler.buildDepError "opentheory-divides"))
            (hsPkgs."opentheory-prime" or (errorHandler.buildDepError "opentheory-prime"))
          ];
          buildable = true;
        };
      };
    };
  }