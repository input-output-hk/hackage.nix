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
      specVersion = "1.8";
      identifier = { name = "graph-core"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 - 2016 factis research GmbH";
      maintainer = "Alexander Thiemann <thiemann@cp-med.com>";
      author = "Stefan Wehr <wehr@cp-med.com>, David Leuschner <leuschner@cp-med.com>, Niklas Baumstark, Jonathan Dimond, Alexander Thiemann <thiemann@cp-med.com>";
      homepage = "https://github.com/factisresearch/graph-core";
      url = "";
      synopsis = "Fast, memory efficient and persistent graph implementation";
      description = "A small package providing a powerful and easy to use Haskell graph implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "graph-core-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
          ];
          buildable = true;
        };
      };
    };
  }