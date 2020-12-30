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
      identifier = { name = "factor"; version = "1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Factoring integers and polynomials";
      description = "This package implements a library of factoring algorithms, including\nthe number field sieve for factoring arbitrary integers, the\nelliptic curve method for finding small factors of integers, the\nMiller-Rabin probabilistic primality test for integers, the\nBerlekamp-Zassenhaus algorithm for factoring integer polynomials,\nthe Berlekamp algorithm for factoring polynomials over GF(p) (for\nsmall primes p), and the Cantor–Zassenhaus algorithm for factoring\npolynomials over GF(p) (for arbitrary odd primes p).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "factor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."factor" or (errorHandler.buildDepError "factor"))
            ];
          buildable = true;
          };
        };
      tests = {
        "factor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }