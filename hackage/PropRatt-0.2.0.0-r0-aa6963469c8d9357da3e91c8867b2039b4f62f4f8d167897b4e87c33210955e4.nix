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
      identifier = { name = "PropRatt"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Christian Emil Nielsen, Mathias Faber Kristiansen, Patrick Bahr";
      maintainer = "paba@itu.dk";
      author = "Christian Emil Nielsen, Mathias Faber Kristiansen, Patrick Bahr";
      homepage = "";
      url = "";
      synopsis = "Property-based testing framework for testing asynchronous FRP programs.";
      description = "PropRatt is a property-based testing framework for testing <https://hackage.haskell.org/package/AsyncRattus Async Rattus> programs.\nThe key component of PropRatt is its specification language, which extends basic linear temporal logic with\na means to express properties of several concurrent signals. This\nallows users to express temporal properties that relate data coming from\ndifferent signals at different points in time.\n\nMore details about the specification language can be found in the <https://bahr.io/pubs/files/propratt-paper.pdf accompanying paper>.\n\nExample specifications written in PropRatt:\n\n* <https://github.com/pa-ba/PropRatt/blob/main/examples/timer/Timer.hs Specification for a simple GUI application>\n\n* <https://github.com/pa-ba/PropRatt/blob/main/examples/main/Main.hs Specification for basic signal combinators> (@map@, @zip@, @scan@, etc.)";
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