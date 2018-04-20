{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "x509";
          version = "1.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-certificate";
        url = "";
        synopsis = "X509 reader and writer";
        description = "X509 reader and writer";
        buildType = "Simple";
      };
      components = {
        x509 = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.hourglass
            hsPkgs.pem
            hsPkgs.asn1-types
            hsPkgs.asn1-encoding
            hsPkgs.asn1-parse
            hsPkgs.crypto-pubkey-types
            hsPkgs.cryptohash
          ];
        };
        tests = {
          test-x509 = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.time
              hsPkgs.asn1-types
              hsPkgs.x509
              hsPkgs.crypto-pubkey-types
            ];
          };
        };
      };
    }