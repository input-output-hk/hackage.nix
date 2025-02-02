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
      specVersion = "1.18";
      identifier = { name = "active"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2015 Brent Yorgey";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Abstractions for animation";
      description = "\"Active\" abstraction for animated things with finite start and end times.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
        ];
        buildable = true;
      };
      tests = {
        "active-tests" = {
          depends = [
            (hsPkgs."active" or (errorHandler.buildDepError "active"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }