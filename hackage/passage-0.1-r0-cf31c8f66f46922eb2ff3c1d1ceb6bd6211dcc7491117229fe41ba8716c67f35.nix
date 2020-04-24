{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."GraphSCC" or ((hsPkgs.pkgs-errors).buildDepError "GraphSCC"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }