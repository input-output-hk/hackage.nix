{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llrbtree";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Purely functional sets and heaps";
        description = "Purely functional data structure including\nred-black trees,\nleft-leaning red-black trees,\nweight balanced trees,\nsplay trees,\nskew heaps,\nleftist heaps,\nsplay heaps,\nand binominal heaps.";
        buildType = "Simple";
      };
      components = {
        llrbtree = {
          depends  = [ hsPkgs.base ];
        };
      };
    }