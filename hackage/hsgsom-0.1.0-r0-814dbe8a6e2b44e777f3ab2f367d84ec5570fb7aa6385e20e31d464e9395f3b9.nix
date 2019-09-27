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
      specVersion = "1.6.0.1";
      identifier = { name = "hsgsom"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephan Günther <gnn dot github at gmail dot com>";
      author = "Stephan Günther";
      homepage = "";
      url = "";
      synopsis = "An implementation of the GSOM clustering algorithm.";
      description = "The growing self organising map (GSOM) algorithm is a clustering algorithm\nworking on a set of n-dimensional numeric input vectors. It's output is a\nnetwork of nodes laid out in two dimensions where each node has a weight\nvector associated with it. This weight vector has the same dimension as the\ninput vectors and is meant to be intepreted as a cluster center, i.e. it\nrepresents those input vectors whose distance to the node's weight vector\nis minimal when compared to the distance to the other nodes weight vectors.\nSee <http://en.wikipedia.org/wiki/GSOM> for an explanation of the algorithm.\nThe algorithm was introduced in:\nAlahakoon, D., Halgamuge, S. K. and Sirinivasan, B. (2000)\nDynamic Self Organizing Maps With Controlled Growth\nfor Knowledge Discovery,\nIEEE Transactions on Neural Networks,\nSpecial Issue on Knowledge Discovery and Data Mining, 11, pp 601-614.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }