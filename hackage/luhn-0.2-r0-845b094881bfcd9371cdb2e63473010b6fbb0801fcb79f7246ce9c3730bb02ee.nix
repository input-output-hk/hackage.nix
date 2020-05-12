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
      specVersion = "1.2";
      identifier = { name = "luhn"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 N-Sim Ltd.";
      maintainer = "jhb@n-sim.com";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "An implementation of Luhn's check digit algorithm.";
      description = "An implementation of Luhn's check digit algorithm.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
          ];
        buildable = true;
        };
      };
    }