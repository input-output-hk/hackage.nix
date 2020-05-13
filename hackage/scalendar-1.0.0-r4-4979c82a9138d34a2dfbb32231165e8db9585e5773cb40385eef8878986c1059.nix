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
      specVersion = "1.10";
      identifier = { name = "scalendar"; version = "1.0.0"; };
      license = "MIT";
      copyright = "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System";
      maintainer = "Sebastian Pulido Gómez ";
      author = "Martin Rayrole <Author of Algorithm>";
      homepage = "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System";
      url = "";
      synopsis = "This is a library for handling calendars and resource availability\nbased on the \"top-nodes algorithm\" and set operations.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "scalendar-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scalendar" or (errorHandler.buildDepError "scalendar"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }