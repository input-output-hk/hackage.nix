{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "shadowsocks";
        version = "1.20150921";
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
      exes = {
        "sslocal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.iproute)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unordered-containers)
          ];
        };
        "ssserver" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.iproute)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.streaming-commons)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.process)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }