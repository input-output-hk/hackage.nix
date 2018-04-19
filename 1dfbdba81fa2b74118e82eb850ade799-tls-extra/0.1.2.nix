{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      bench = false;
      executable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tls-extra";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-tls-extra";
        url = "";
        synopsis = "TLS extra default values and helpers";
        description = "a set of extra definitions, default values and helpers for tls.";
        buildType = "Simple";
      };
      components = {
        tls-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.tls
            hsPkgs.mtl
            hsPkgs.cryptohash
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.crypto-api
            hsPkgs.cryptocipher
            hsPkgs.certificate
          ];
        };
        exes = {
          stunnel = {
            depends  = optionals _flags.executable [
              hsPkgs.network
              hsPkgs.cmdargs
            ];
          };
          checkciphers = {
            depends  = optionals _flags.executable [
              hsPkgs.network
              hsPkgs.cmdargs
            ];
          };
          Tests = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
            ];
          };
        };
      };
    }