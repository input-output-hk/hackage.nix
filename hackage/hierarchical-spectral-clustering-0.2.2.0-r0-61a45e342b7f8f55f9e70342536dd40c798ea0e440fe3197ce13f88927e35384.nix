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
      specVersion = "1.10";
      identifier = {
        name = "hierarchical-spectral-clustering";
        version = "0.2.2.0";
        };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/hierarchical-spectral-clustering#readme";
      url = "";
      synopsis = "Hierarchical spectral clustering of a graph.";
      description = "Generate a tree of hierarchical spectral clustering using Newman-Girvan modularity as a stopping criteria.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."clustering" or (buildDepError "clustering"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."eigen" or (buildDepError "eigen"))
          (hsPkgs."hierarchical-clustering" or (buildDepError "hierarchical-clustering"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."managed" or (buildDepError "managed"))
          (hsPkgs."modularity" or (buildDepError "modularity"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."sparse-linear-algebra" or (buildDepError "sparse-linear-algebra"))
          (hsPkgs."spectral-clustering" or (buildDepError "spectral-clustering"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or (buildDepError "streaming-cassava"))
          (hsPkgs."streaming-with" or (buildDepError "streaming-with"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tree-fun" or (buildDepError "tree-fun"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "cluster-tree" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hierarchical-spectral-clustering" or (buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }