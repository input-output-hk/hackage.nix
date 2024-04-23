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
      identifier = { name = "math-grads"; version = "0.1.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexandr Sadovnikov";
      maintainer = "artemkondyukov, AlexKaneRUS, vks4git";
      author = "Alexandr Sadovnikov";
      homepage = "https://github.com/biocad/math-grads#readme";
      url = "";
      synopsis = "Library containing graph data structures and graph algorithms";
      description = "Library containing graph data structures and graph algorithms.\n\nGraph data structures:\n\n* Graph type class;\n\n* GenericGraph data structure.\n\nGraph algorithms:\n\n* Ullmann's subgraph isomorphism algorithm;\n\n* drawing of planar graphs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "Coords-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."math-grads" or (errorHandler.buildDepError "math-grads"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "Graph-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."math-grads" or (errorHandler.buildDepError "math-grads"))
          ];
          buildable = true;
        };
        "Isomorphism-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."math-grads" or (errorHandler.buildDepError "math-grads"))
          ];
          buildable = true;
        };
      };
    };
  }