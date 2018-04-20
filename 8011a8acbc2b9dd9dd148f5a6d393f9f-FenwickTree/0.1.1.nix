{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "FenwickTree";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright by Michal J. Gajda '2013";
        maintainer = "mjgajda@googlemail.com";
        author = "Michal J. Gajda";
        homepage = "https://github.com/mgajda/FenwickTree";
        url = "http://hackage.haskell.org/package/FenwickTree";
        synopsis = "Data structure for fast query and update of cumulative sums";
        description = "Fenwick trees are a O(log N) data structure for updating cumulative sums.\nThis implementation comes with an operation to find a least element for\nwhich real-valued cumulative sum reaches certain value, and allows for\nstorage of arbitrary information in the nodes.";
        buildType = "Simple";
      };
      components = {
        FenwickTree = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          test_FenwickTree = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }