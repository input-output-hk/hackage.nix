{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bloomfilter";
          version = "2.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/bloomfilter";
        url = "";
        synopsis = "Pure and impure Bloom Filter implementations.";
        description = "Pure and impure Bloom Filter implementations.";
        buildType = "Simple";
      };
      components = {
        "bloomfilter" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bloomfilter
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }