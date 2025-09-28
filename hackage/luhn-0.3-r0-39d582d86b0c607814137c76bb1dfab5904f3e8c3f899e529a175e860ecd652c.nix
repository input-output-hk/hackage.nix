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
      specVersion = "3.8";
      identifier = { name = "luhn"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 N-Sim Ltd., 2025 Henry Bucklow";
      maintainer = "opensource@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "An implementation of Luhn's check digit algorithm.";
      description = "An implementation of Luhn's check digit algorithm. This is a simple algorithm\nused to validate a variety of identification numbers, such as credit card numbers.\nSee <http://en.wikipedia.org/wiki/Luhn_algorithm> for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "luhn-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."luhn" or (errorHandler.buildDepError "luhn"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }