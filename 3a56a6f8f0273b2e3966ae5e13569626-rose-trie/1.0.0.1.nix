{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rose-trie";
          version = "1.0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2008-2016 Ramin Honary";
        maintainer = "ramin.honary@gmail.com";
        author = "Ramin Honary";
        homepage = "https://github.com/RaminHAL9001/rose-trie";
        url = "";
        synopsis = "Provides \"Data.Tree.RoseTrie\": trees with polymorphic paths to nodes, combining\nproperties of Rose Tree data structures and Trie data structures.";
        description = "\nA rose tree is a tree of trees, where every node contains a leaf and set of\nsub-trees. A trie is a tree structure where each node can be accessed using a\n\"path,\" where a path is a list of keys. A rose-trie does both. RoseTries are\nbest used in situations where every leaf in the Trie needs to accessible by a\nlist of polymorphic path elements.\n\nThe underlying implementation is based on \"Data.Map\", from the Haskell\nPlatform's \"containers\" package. So unlike the ordinary rose tree, where each\nnode contains a list of sub-trees, the RoseTrie contains a Map of sub-trees,\nwhere each key in the Map forms a single link in the trie path. As a result, the\npath for the RoseTrie is a list data type that is polymorphic over list elements\nwhich instantiate both the 'Prelude.Ord' and 'Prelude.Eq' type classes.\n\nOperating on a RoseTrie with a path of length @p@ performs up to @p@ times a\nnumber of @O(log n)@ Map operations on each of the sub-tree Map structures\ncontaining `n` elements, therefore path lookups and insertions in a RoseTrie\ndata structure are on the order of @O(p * log n)@ time complexity.\n\nThis library was originally part of the Dao package, but has been branched\ninto it's own package in the hopes that it will be useful in a wider\nvariety of projects.";
        buildType = "Simple";
      };
      components = {
        rose-trie = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.minilens
            hsPkgs.transformers
          ];
        };
      };
    }