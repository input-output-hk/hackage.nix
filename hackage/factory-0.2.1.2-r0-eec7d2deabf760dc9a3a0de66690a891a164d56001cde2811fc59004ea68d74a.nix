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
      specVersion = "1.10";
      identifier = { name = "factory"; version = "0.2.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2011-2015 Dr. Alistair Ward";
      maintainer = "mailto <colon> factory <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu/Factory/factory.html";
      url = "";
      synopsis = "Rational arithmetic in an irrational world.";
      description = "A library of number-theory functions, for; factorials, square-roots, Pi and primes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          ];
        buildable = true;
        };
      exes = {
        "factory" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickCheck" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."factory" or (errorHandler.buildDepError "factory"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      };
    }