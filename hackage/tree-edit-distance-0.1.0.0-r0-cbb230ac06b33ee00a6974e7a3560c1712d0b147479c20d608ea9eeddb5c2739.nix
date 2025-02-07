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
      identifier = { name = "tree-edit-distance"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Tillmann Vogt";
      maintainer = "tillk.vogt@gmail.com";
      author = "Tillmann Vogt";
      homepage = "https://github.com/tkvogt/tree-edit-distance#readme";
      url = "";
      synopsis = "Tree Edit Distance to determine the similarity between two trees";
      description = "Dynamic Programming algorithm by Zhang Shasha to calculate the Tree Edit Distance";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."intmap-graph" or (errorHandler.buildDepError "intmap-graph"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "tree-edit-distance-exe" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."intmap-graph" or (errorHandler.buildDepError "intmap-graph"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tree-edit-distance" or (errorHandler.buildDepError "tree-edit-distance"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tree-edit-distance-test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."intmap-graph" or (errorHandler.buildDepError "intmap-graph"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tree-edit-distance" or (errorHandler.buildDepError "tree-edit-distance"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }