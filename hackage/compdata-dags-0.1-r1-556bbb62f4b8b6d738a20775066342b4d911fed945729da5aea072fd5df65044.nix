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
      specVersion = "1.9.2";
      identifier = { name = "compdata-dags"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@di.ku.dk";
      author = "Patrick Bahr, Emil Axelsson";
      homepage = "";
      url = "";
      synopsis = "Compositional Data Types on DAGs";
      description = "This library implements recursion schemes on directed acyclic\ngraphs. The recursion schemes are explained in detail in the paper\n/Generalising Tree Traversals to DAGs/\n(<http://www.diku.dk/~paba/pubs/entries/bahr15pepm.html>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
          (hsPkgs."projection" or (errorHandler.buildDepError "projection"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."compdata" or (errorHandler.buildDepError "compdata"))
            (hsPkgs."projection" or (errorHandler.buildDepError "projection"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }