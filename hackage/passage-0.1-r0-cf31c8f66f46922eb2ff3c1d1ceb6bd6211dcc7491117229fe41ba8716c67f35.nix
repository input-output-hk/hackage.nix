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
      specVersion = "1.6";
      identifier = { name = "passage"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011 Galois, Inc. and Battelle Memorial Institute";
      maintainer = "Chad Scherrer";
      author = "Chad Scherrer (Pacific Northwest National Laboratory),\nLevent Erkok (Galois, Inc),\nIavor Diatchki (Galois, Inc),\nMatthew Sottile (Galois, Inc)";
      homepage = "";
      url = "";
      synopsis = "Parallel code generation for hierarchical Bayesian modeling.";
      description = "Passage is a PArallel SAmpler GEnerator. The user specifies a hierarchical\nBayesian model and data using the Passage EDSL, and Passage generates code\nto sample the posterior distribution in parallel.\n\nCurrently Passage targets C with OpenMP threads.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."GraphSCC" or (errorHandler.buildDepError "GraphSCC"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }