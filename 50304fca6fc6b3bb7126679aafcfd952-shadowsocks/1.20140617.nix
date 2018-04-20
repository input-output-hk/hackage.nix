{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shadowsocks";
          version = "1.20140617";
        };
        license = "MIT";
        copyright = "";
        maintainer = "remotenonsense@gmail.com";
        author = "rnons";
        homepage = "https://github.com/rnons/shadowsocks-haskell";
        url = "";
        synopsis = "A fast tunnel proxy that help you get through firewalls";
        description = "Shadowsocks implemented in Haskell. Original python version: <https://github.com/clowwindy/shadowsocks>";
        buildType = "Simple";
      };
      components = {
        exes = {
          sslocal = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.HsOpenSSL
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.unordered-containers
            ];
          };
          ssserver = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.HsOpenSSL
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.HsOpenSSL
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.HUnit
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }