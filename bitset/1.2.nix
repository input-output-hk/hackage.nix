{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.12";
        identifier = {
          name = "bitset";
          version = "1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Sergei Lebedev <superbobry@gmail.com>";
        author = "Sergei Lebedev <superbobry@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A compact functional set data structure.";
        description = "A /bit set/ is a compact data structure, which maintains a set of members\nfrom a type that can be enumerated (i. e. has an `Enum' instance). Current\nimplementations uses @Integer@ for as bit storage and provides most of the\nexpected set operations: insertion, deletion, intersection, membership\ntesting etc.";
        buildType = "Simple";
      };
      components = {
        bitset = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          bitset-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bitset
            ];
          };
        };
        benchmarks = {
          bitset-benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.bitset
              hsPkgs.criterion
            ];
          };
        };
      };
    }