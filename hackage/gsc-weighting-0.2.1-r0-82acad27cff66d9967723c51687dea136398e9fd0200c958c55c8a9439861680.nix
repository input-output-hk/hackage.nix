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
      identifier = { name = "gsc-weighting"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Generic implementation of Gerstein/Sonnhammer/Chothia weighting.";
      description = "In their 1994 paper \\\"Volume Changes in Protein Evolution\\\",\nGerstein, Sonnhammer and Chothia developed a weighting\nprocedure for protein sequences to avoid over-represented\nsequences in the appendix \\\"A Method to Weight Protein\nSequences to Correct for Unequal Representation\\\".  Although\ntheir method was developed for protein sequences, it is readily\nextended to work on any measurable set.\n\nThis package calculates GSC weights for any reasonable\ndendrogram.  If you want to recreate their algorithm, then just\nuse @UPGMA@ as linkage and residue identity as distance\nfunction when creating the dendrogram.\n\nChanges in version 0.2:\n\n* Updated to work with @hierarchical-clustering@ 0.4.\n\nChanges in version 0.1.1.1:\n\n* Use an stricter upper bound on @hierachical-clustering@.\n\nChanges in version 0.1.1:\n\n* Now works even when some (or all) branches have distance zero\n(i.e. elements below that branches are all equal with respect\nto distance metric that was used to create the dendrogram).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hierarchical-clustering" or (buildDepError "hierarchical-clustering"))
          ];
        };
      };
    }