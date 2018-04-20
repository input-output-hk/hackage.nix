{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      sample = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "memcache-haskell";
          version = "0.0.10";
        };
        license = "MIT";
        copyright = "(c) 2015 GREE, Inc.";
        maintainer = "Kiyoshi Ikehara";
        author = "Kiyoshi Ikehara";
        homepage = "";
        url = "";
        synopsis = "";
        description = "A memcache protocol library for client and server applications.";
        buildType = "Simple";
      };
      components = {
        memcache-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.attoparsec
            hsPkgs.transformers
            hsPkgs.split
            hsPkgs.hashable
          ];
        };
        exes = {
          memcache-sample-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.hashtables
              hsPkgs.network-conduit
              hsPkgs.memcache-haskell
            ];
          };
          memcache-sample-retrieval = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.hashtables
              hsPkgs.network-conduit
              hsPkgs.memcache-haskell
            ];
          };
        };
        tests = {
          test-memcache = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.network
              hsPkgs.split
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.memcache-haskell
            ];
          };
        };
      };
    }