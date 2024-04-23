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
      identifier = { name = "boopadoop"; version = "0.0.0.1"; };
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
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
      tests = {
        "boopadoop-test" = {
          depends = [
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boopadoop" or (errorHandler.buildDepError "boopadoop"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = true;
        };
      };
    };
  }