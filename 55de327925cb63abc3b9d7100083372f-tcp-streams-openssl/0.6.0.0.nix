{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tcp-streams-openssl";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Winterland 2016";
        maintainer = "winterland1989@gmail.com";
        author = "winterland1989";
        homepage = "https://github.com/winterland1989/tcp-streams";
        url = "";
        synopsis = "Tcp streams using openssl for tls support.";
        description = "Tcp streams using openssl for tls support.";
        buildType = "Simple";
      };
      components = {
        "tcp-streams-openssl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.io-streams
            hsPkgs.tcp-streams
            hsPkgs.HsOpenSSL
            hsPkgs.HsOpenSSL-x509-system
          ];
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.io-streams
              hsPkgs.tcp-streams
              hsPkgs.tcp-streams-openssl
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.directory
            ];
          };
        };
      };
    }