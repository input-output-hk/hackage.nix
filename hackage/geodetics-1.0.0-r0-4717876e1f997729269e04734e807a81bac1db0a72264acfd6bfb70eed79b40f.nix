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
      specVersion = "3.0";
      identifier = { name = "geodetics"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Johnson 2018,2024";
      maintainer = "Paul Johnson <paul@cogito.org.uk>";
      author = "Paul Johnson <paul@cogito.org.uk>";
      homepage = "https://github.com/PaulJohnson/geodetics";
      url = "";
      synopsis = "Terrestrial coordinate systems and geodetic calculations.";
      description = "Precise geographical coordinates (latitude & longitude), with conversion between\ndifferent reference frames and projections.\n\nCertain distinguished reference frames and grids are given distinct\ntypes so that coordinates expressed within them cannot be confused with\nfrom coordinates in other frames.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
        ];
        buildable = true;
      };
      tests = {
        "GeodeticTest" = {
          depends = [
            (hsPkgs."geodetics" or (errorHandler.buildDepError "geodetics"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
          ];
          buildable = true;
        };
      };
    };
  }