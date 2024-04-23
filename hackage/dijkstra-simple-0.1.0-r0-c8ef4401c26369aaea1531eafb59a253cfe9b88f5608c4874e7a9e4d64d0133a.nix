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
      identifier = { name = "dijkstra-simple"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Gautier DI FOLCO";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/dijkstra-simple#readme";
      url = "";
      synopsis = "A simpler Dijkstra shortest paths implementation";
      description = "Provides a simplistic Dijkstra implementation with some useful variations and generalizations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
        ];
        buildable = true;
      };
      tests = {
        "dijkstra-simple-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dijkstra-simple" or (errorHandler.buildDepError "dijkstra-simple"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }