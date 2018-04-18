{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "asn1-encoding";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-asn1";
        url = "";
        synopsis = "ASN1 data reader and writer in RAW, BER and DER forms";
        description = "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, and DER).";
        buildType = "Simple";
      };
      components = {
        asn1-encoding = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.hourglass
            hsPkgs.asn1-types
          ];
        };
        tests = {
          tests-asn1-encoding = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.asn1-types
              hsPkgs.asn1-encoding
              hsPkgs.hourglass
            ];
          };
        };
      };
    }