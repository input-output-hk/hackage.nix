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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hedgehog-lockstep"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2026 Josh Burgess";
      maintainer = "joshualoganburgess@gmail.com";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/hedgehog-lockstep";
      url = "";
      synopsis = "Lockstep-style stateful property testing for Hedgehog";
      description = "Lockstep-style testing of stateful APIs built on Hedgehog's\nstate machine framework. Ports the ideas of quickcheck-lockstep onto\nHedgehog, giving integrated shrinking, parallel testing, and less\nboilerplate than the QuickCheck / quickcheck-dynamic / quickcheck-lockstep\nstack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
        ];
        buildable = true;
      };
      tests = {
        "hedgehog-lockstep-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-lockstep" or (errorHandler.buildDepError "hedgehog-lockstep"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }