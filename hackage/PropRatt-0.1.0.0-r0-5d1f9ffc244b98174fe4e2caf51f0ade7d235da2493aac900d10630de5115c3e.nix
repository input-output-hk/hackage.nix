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
      specVersion = "2.2";
      identifier = { name = "PropRatt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Christian Emil Nielsen, Mathias Faber Kristiansen, Patrick Bahr";
      maintainer = "paba@itu.dk";
      author = "Christian Emil Nielsen, Mathias Faber Kristiansen, Patrick Bahr";
      homepage = "";
      url = "";
      synopsis = "Property-based testing framework for testing asynchronous FRP programs.";
      description = "PropRatt is a property-based testing framework for testing Async Rattus programs.\nThe key component of PropRatt is its specification language, which extends basic linear temporal logic with\na means to express properties of several concurrent signals. This\nallows users to express temporal properties that relate data coming from\ndifferent signals at different points in time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "main-example" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."PropRatt" or (errorHandler.buildDepError "PropRatt"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "timer-example" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."PropRatt" or (errorHandler.buildDepError "PropRatt"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "PropRatt-test" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."PropRatt" or (errorHandler.buildDepError "PropRatt"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }