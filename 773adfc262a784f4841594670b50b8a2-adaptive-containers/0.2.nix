{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "adaptive-containers";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart (dons@galois.com)";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/adaptive-containers";
        url = "";
        synopsis = "Self optimizing container types";
        description = "Self optimizing polymorphic container types.\n\nAdaptive containers are polymorphic container types that use\nclass associated data types to specialize particular element types\nto a more efficient container representation. The resulting\nstructures tend to be both more time and space efficient.\n\nA self-optimizing pair, for example, will unpack the constructors,\nyielding a representation for (Int,Char) requiring 8 bytes, instead\nof 24.\n\nThis difference can be visualized, here for the value:\n\n> [ (x,y) | x <- [1..3], y <- [x..3] ]\n\n* A regular list of pairs <http://code.haskell.org/~dons/images/vacuum/tuple-list.png>\n\n* An adaptive list of pairs <http://code.haskell.org/~dons/images/vacuum/pair-list.png>\n\n* An adaptive list of adaptive pairs <http://code.haskell.org/~dons/images/vacuum/list-pair.png>\n\nCurrently supported adaptive types: pairs, lists";
        buildType = "Simple";
      };
      components = {
        "adaptive-containers" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }