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
      identifier = { name = "disjoint-set"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<maxwellsayles@gmail.com>, <myles.maxfield@gmail.com>";
      author = "Maxwell Sayles, Myles Maxfield";
      homepage = "https://github.com/maxwellsayles/disjoint-set";
      url = "";
      synopsis = "Persistent disjoint-sets, a.k.a union-find.";
      description = "This is a persistent data structure for disjoint sets.\n\nThe algorithm is described in \"Introduction to\nAlgorithms\" by Cormen, et al. The implementation here\nuses both union by rank and path compression. We\nincur an O(logn) overhead because of the use of\npersistent maps.\n\nData.IntDisjointSet is as strict as possible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }