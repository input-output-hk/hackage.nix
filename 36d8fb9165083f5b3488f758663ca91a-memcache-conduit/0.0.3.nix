{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      sample = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "memcache-conduit";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "(c) 2015 GREE, Inc.";
        maintainer = "Kiyoshi Ikehara";
        author = "Kiyoshi Ikehara";
        homepage = "";
        url = "";
        synopsis = "Conduit library for memcache procotol";
        description = "This package provides conduit functions for memcache protocol.";
        buildType = "Simple";
      };
      components = {
        memcache-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.split
            hsPkgs.mtl
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.conduit-extra
            hsPkgs.attoparsec
            hsPkgs.attoparsec-binary
            hsPkgs.memcache-haskell
          ];
        };
        exes = {
          memcache-sample-hemcached = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.hashtables
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.memcache-haskell
              hsPkgs.memcache-conduit
            ];
          };
          memcache-sample-proxy = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.monad-control
              hsPkgs.memcache-haskell
              hsPkgs.memcache-conduit
            ];
          };
        };
      };
    }