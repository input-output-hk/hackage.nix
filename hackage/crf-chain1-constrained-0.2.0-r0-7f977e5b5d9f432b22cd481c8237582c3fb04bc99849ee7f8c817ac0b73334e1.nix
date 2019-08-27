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
      identifier = { name = "crf-chain1-constrained"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/crf-chain1-constrained";
      url = "";
      synopsis = "First-order, constrained, linear-chain conditional random fields";
      description = "The library provides efficient implementation of the first-order,\nlinear-chain conditional random fields (CRFs) with position-wise\nconstraints imposed over label values.\n\nIt is strongly related to the simpler\n<http://hackage.haskell.org/package/crf-chain1>\nlibrary where constraints are not taken into account and all\nfeatures which are not included in the CRF model are considered to have\nprobability of 0.  Here, on the other hand, such features do not influence\nthe overall probability of the (sentence, labels) pair - they are\nassigned the default potential of 0.\n\nEfficient algorithm for determining marginal probabilities of individual\nlabels is provided.\nThe tagging is performed with respect to marginal probabilities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."logfloat" or (buildDepError "logfloat"))
          (hsPkgs."monad-codec" or (buildDepError "monad-codec"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."vector-binary" or (buildDepError "vector-binary"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."sgd" or (buildDepError "sgd"))
          ];
        };
      };
    }