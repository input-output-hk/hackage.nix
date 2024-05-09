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
      identifier = { name = "vertexenum"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2023-2024 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/vertexenum#readme";
      url = "";
      synopsis = "Vertex enumeration";
      description = "Vertex enumeration of convex polytopes given by linear inequalities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."simplex-method" or (errorHandler.buildDepError "simplex-method"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vertexenum" or (errorHandler.buildDepError "vertexenum"))
          ];
          buildable = true;
        };
      };
    };
  }