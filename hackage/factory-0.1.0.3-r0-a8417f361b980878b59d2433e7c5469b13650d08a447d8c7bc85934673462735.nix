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
    flags = { llvm = false; threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "factory"; version = "0.1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2011 Dr. Alistair Ward";
      maintainer = "factory <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Rational arithmetic in an irrational world.";
      description = "A library of number-theory functions, for; factorials, square-roots, Pi, primality-testing, prime-factorisation ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          ] ++ [
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      exes = {
        "factory" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }