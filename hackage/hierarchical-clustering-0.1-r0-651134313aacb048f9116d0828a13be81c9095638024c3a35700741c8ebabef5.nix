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
      identifier = { name = "hierarchical-clustering"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Algorithms for single, average/UPGMA and complete linkage clustering.";
      description = "This package provides a function to create a dendrogram from a\nlist of items and a distance function between them.  Initially\na singleton cluster is created for each item, and then new,\nbigger clusters are created by merging the two clusters with\nleast distance between them.  The distance between two clusters\nis calculated according to the linkage type.  The dendrogram\nrepresents not only the clusters but also the order on which\nthey were created.\n\nThis function uses a naïve algorithm that represents distances\nin a rectangular distance matrix.  There could be space\nimprovements (e.g. using a triangular matrix structure) and\ntime improvements (e.g. using a finger tree to avoid traversing\nthe whole matrix on every iteration just to see what the\nminimum is).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      };
    }