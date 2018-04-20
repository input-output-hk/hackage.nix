{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "q4c12-twofinger";
          version = "0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "quasicomputational <quasicomputational@gmail.com>";
        author = "quasicomputational <quasicomputational@gmail.com>";
        homepage = "https://github.com/quasicomputational/mega/tree/master/packages/twofinger";
        url = "";
        synopsis = "Efficient alternating finger trees";
        description = "This package provides efficient alternating sequences based on finger trees. These can represent sequences made up of two types of element, @e@ and @a@  where two of the same type of element cannot follow each other directly.\n\nFour different flavours are provided, isomorphic to @([(a, e)], a)@, @([(e, a)], e)@, @[(a, e)]@, and @[(e, a)]@.\n\nCons-like operations are /O(1)/ amortised, and append operations are /O(log(min(n, m)))/ amortised.\n\nFor more details, please see the Haddock documentation of \"Q4C12.TwoFinger\".";
        buildType = "Custom";
      };
      components = {
        q4c12-twofinger = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.semigroupoids
            hsPkgs.streams
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.bifunctors;
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.lens
              hsPkgs.q4c12-twofinger
              hsPkgs.streams
            ];
          };
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.q4c12-twofinger
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }