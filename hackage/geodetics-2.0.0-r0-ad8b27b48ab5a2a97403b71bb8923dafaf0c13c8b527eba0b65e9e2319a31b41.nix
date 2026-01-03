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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "geodetics"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Johnson 2018, 2025";
      maintainer = "Paul Johnson <paul@cogito.org.uk>";
      author = "Paul Johnson <paul@cogito.org.uk>";
      homepage = "https://github.com/PaulJohnson/geodetics";
      url = "";
      synopsis = "Terrestrial coordinate systems and geodetic calculations.";
      description = "Precise geographical coordinates (latitude & longitude), with conversion between\ndifferent reference frames and projections.\n\nCertain distinguished reference frames and grids are given distinct\ntypes so that coordinates expressed within them cannot be confused with\ncoordinates in other frames.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
        ];
        buildable = true;
      };
      tests = {
        "GeodeticTest" = {
          depends = [
            (hsPkgs."geodetics" or (errorHandler.buildDepError "geodetics"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
          ];
          buildable = true;
        };
      };
    };
  }