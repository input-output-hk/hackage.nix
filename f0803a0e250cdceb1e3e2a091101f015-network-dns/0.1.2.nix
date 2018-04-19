{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "network-dns";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Langley <agl@imperialviolet.org>";
        author = "Adam Langley <agl@imperialviolet.org>";
        homepage = "http://darcs.imperialviolet.org/network-dns";
        url = "";
        synopsis = "A pure Haskell, asyncronous DNS client library";
        description = "A pure Haskell, asyncronous DNS client library";
        buildType = "Simple";
      };
      components = {
        network-dns = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.binary-strict
            hsPkgs.control-timeout
            hsPkgs.network
            hsPkgs.network-bytestring
            hsPkgs.binary
            hsPkgs.unix
            hsPkgs.parsec
            hsPkgs.stm
            hsPkgs.random
            hsPkgs.time
          ];
        };
      };
    }