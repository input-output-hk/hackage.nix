{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TreeStructures";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brendan Hickey";
        author = "Brendan Hickey";
        homepage = "http://www.github.com/bhickey/TreeStructures";
        url = "";
        synopsis = "A collection of heaps and search trees";
        description = "This package presently includes binary heaps, binomial heaps, skew heaps, splay trees, and AVL trees.";
        buildType = "Simple";
      };
      components = {
        TreeStructures = {
          depends  = [ hsPkgs.base ];
        };
      };
    }