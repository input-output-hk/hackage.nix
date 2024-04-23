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
      identifier = { name = "monad-dijkstra"; version = "0.1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2023 Enno Cramer";
      maintainer = "Enno Cramer <ecramer@memfrob.de>";
      author = "Enno Cramer";
      homepage = "https://github.com/ennocramer/monad-dijkstra";
      url = "";
      synopsis = "A monad transformer for weighted graph searches";
      description = "A monad transformer for weighted graph searches using Dijkstra's or A* algorithm.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
        ];
        buildable = true;
      };
      tests = {
        "test-monad-dijkstra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."monad-dijkstra" or (errorHandler.buildDepError "monad-dijkstra"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
        "style-monad-dijkstra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = true;
        };
      };
    };
  }