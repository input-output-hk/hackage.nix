{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "shadowsocks";
          version = "1.20180408";
        };
        license = "MIT";
        copyright = "";
        maintainer = "remotenonsense@gmail.com";
        author = "rnons";
        homepage = "https://github.com/rnons/shadowsocks-haskell";
        url = "";
        synopsis = "A fast SOCKS5 proxy that help you get through firewalls";
        description = "Shadowsocks implemented in Haskell. Original python version: <https://github.com/clowwindy/shadowsocks>";
        buildType = "Simple";
      };
      components = {
        "shadowsocks" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.directory
            hsPkgs.HsOpenSSL
            hsPkgs.iproute
            hsPkgs.network
            hsPkgs.optparse-applicative
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          "sslocal" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shadowsocks
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
            ];
          };
          "ssserver" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shadowsocks
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.network
              hsPkgs.streaming-commons
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.process
              hsPkgs.HUnit
            ];
          };
        };
      };
    }