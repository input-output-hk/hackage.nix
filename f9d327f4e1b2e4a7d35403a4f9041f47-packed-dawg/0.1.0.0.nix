{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "packed-dawg";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "puttamalac@gmail.com";
        author = "Andras Kovacs";
        homepage = "";
        url = "";
        synopsis = "Generation and traversal of highly compressed directed acyclic word graphs.";
        description = "Generation and traversal of highly compressed directed acyclic word graphs.";
        buildType = "Simple";
      };
      components = {
        packed-dawg = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.mtl
            hsPkgs.vector-binary-instances
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.mtl
              hsPkgs.vector-binary-instances
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.unordered-containers
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
            ];
          };
        };
        benchmarks = {
          bench-dawg-gen = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.mtl
              hsPkgs.vector-binary-instances
              hsPkgs.binary
              hsPkgs.deepseq
              hsPkgs.unordered-containers
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.criterion
            ];
          };
        };
      };
    }