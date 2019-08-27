let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monadLib" or (buildDepError "monadLib"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."GraphSCC" or (buildDepError "GraphSCC"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        };
      };
    }