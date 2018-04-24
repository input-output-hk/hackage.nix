{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "bv-little";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Alex Washburn 2018";
        maintainer = "hackage@recursion.ninja";
        author = "Alex Washburn";
        homepage = "https://github.com/recursion-ninja/bv-little";
        url = "";
        synopsis = "Efficient little-endian bit vector library";
        description = "\nThis package contains a time- and space- efficient implementation of little-endian bit vectors. Provides implementations of applicable typeclasses and numeric conversions.\n\nThe declared cost of each operation is either worst-case or amortized.\n\nFor an implementation of /big-endian/ bit vectors, use the <https://hackage.haskell.org/package/bv bv> package.";
        buildType = "Simple";
      };
      components = {
        bv-little = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.integer-gmp
            hsPkgs.mono-traversable
            hsPkgs.primitive
            hsPkgs.QuickCheck
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.bv-little
              hsPkgs.hashable
              hsPkgs.mono-traversable
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
              hsPkgs.semigroups
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          benchmark-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.bv-little
              hsPkgs.criterion
              hsPkgs.deepseq
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          };
        };
      };
    }