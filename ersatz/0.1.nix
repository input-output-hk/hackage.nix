{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ersatz";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2013 Edward Kmett, (c) 2013 Johan Kiviniemi";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett, Johan Kiviniemi";
        homepage = "http://comonad.com/reader";
        url = "";
        synopsis = "A monad for expressing SAT or QSAT problems using observable sharing.";
        description = "A monad for expressing SAT or QSAT problems using observable sharing.\n\nFor example, we can express a full-adder with:\n\n> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)\n> full_adder a b cin = (s2, c1 || c2)\n>   where (s1,c1) = half_adder a b\n>         (s2,c2) = half_adder s1 cin\n\n> half_adder :: Bit -> Bit -> (Bit, Bit)\n> half_adder a b = (a `xor` b, a && b)";
        buildType = "Custom";
      };
      components = {
        ersatz = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.ersatz
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.data-reify
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }