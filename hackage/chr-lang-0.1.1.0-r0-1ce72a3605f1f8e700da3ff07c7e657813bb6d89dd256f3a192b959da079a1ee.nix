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
      identifier = { name = "chr-lang"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/chr";
      url = "";
      synopsis = "AST + surface language around chr";
      description = "AST + surface language around chr, with executable for parsing and running the evaluator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."chr-parse" or (errorHandler.buildDepError "chr-parse"))
          (hsPkgs."chr-pretty" or (errorHandler.buildDepError "chr-pretty"))
          (hsPkgs."chr-data" or (errorHandler.buildDepError "chr-data"))
          (hsPkgs."chr-core" or (errorHandler.buildDepError "chr-core"))
        ];
        buildable = true;
      };
      exes = {
        "chr-term" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chr-data" or (errorHandler.buildDepError "chr-data"))
            (hsPkgs."chr-lang" or (errorHandler.buildDepError "chr-lang"))
          ];
          buildable = true;
        };
      };
    };
  }