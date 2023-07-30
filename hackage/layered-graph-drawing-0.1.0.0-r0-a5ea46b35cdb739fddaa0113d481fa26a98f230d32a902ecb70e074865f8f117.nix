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
      identifier = { name = "layered-graph-drawing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Tillmann Vogt";
      maintainer = "tillk.vogt@gmail.com";
      author = "Tillmann Vogt";
      homepage = "https://github.com/BeFunctional/layered-graph-drawing";
      url = "";
      synopsis = "Layered Graph Drawing after Sugiyama";
      description = "Calculates the positions of graph nodes in a table with layered graph drawing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."intmap-graph" or (errorHandler.buildDepError "intmap-graph"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "graph-drawing-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."layered-graph-drawing" or (errorHandler.buildDepError "layered-graph-drawing"))
            (hsPkgs."intmap-graph" or (errorHandler.buildDepError "intmap-graph"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }