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
      specVersion = "1.12";
      identifier = { name = "boopadoop"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "2019 Sam Quinn";
      maintainer = "lazersmoke@gmail.com";
      author = "Sam Quinn";
      homepage = "https://github.com/Lazersmoke/boopadoop#readme";
      url = "";
      synopsis = "Mathematically sound sound synthesis";
      description = "Please see the README on GitHub at <https://github.com/Lazersmoke/boopadoop#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "perfprof" = {
          depends = [
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boopadoop" or (errorHandler.buildDepError "boopadoop"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "boopadoop-test" = {
          depends = [
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boopadoop" or (errorHandler.buildDepError "boopadoop"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }