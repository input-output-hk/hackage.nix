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
      identifier = { name = "rose-trie"; version = "1.0.0.5"; };
      license = "GPL-3.0-only";
      copyright = "2008-2016 Ramin Honary";
      maintainer = "ramin.honary@gmail.com";
      author = "Ramin Honary";
      homepage = "https://github.com/RaminHAL9001/rose-trie";
      url = "";
      synopsis = "Trees with polymorphic paths to nodes, combining properties of Rose Trees and Tries.";
      description = "\nA rose tree is a tree of trees, where every node contains a leaf and set of\nsub-trees. A trie is a tree structure where each node can be accessed using a\n\"path,\" where a path is a list of keys. A rose-trie does both. RoseTries are\nbest used in situations where every leaf in the Trie needs to accessible by a\nlist of polymorphic path elements.\n\nThe underlying implementation is based on \"Data.Map\", from the Haskell\nPlatform's \"containers\" package. So unlike the ordinary rose tree, where each\nnode contains a list of sub-trees, the RoseTrie contains a Map of sub-trees,\nwhere each key in the Map forms a single link in the trie path. As a result, the\npath for the RoseTrie is a list data type that is polymorphic over list elements\nwhich instantiate both the 'Prelude.Ord' and 'Prelude.Eq' type classes.\n\nOperating on a RoseTrie with a path of length @p@ performs up to @p@ times a\nnumber of @O(log n)@ Map operations on each of the sub-tree Map structures\ncontaining `n` elements, therefore path lookups and insertions in a RoseTrie\ndata structure are on the order of @O(p * log n)@ time complexity.\n\nThis library was originally part of the Dao package, but has been branched\ninto it's own package in the hopes that it will be useful in a wider\nvariety of projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."minilens" or (buildDepError "minilens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }