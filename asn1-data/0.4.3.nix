{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "asn1-data";
          version = "0.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-asn1-data";
        url = "";
        synopsis = "ASN1 data reader and writer in RAW, BER, DER and CER forms";
        description = "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, CER and DER).\n\nAll interfaces use the enumerator interface.";
        buildType = "Simple";
      };
      components = {
        asn1-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.enumerator
            hsPkgs.attoparsec
            hsPkgs.attoparsec-enumerator
            hsPkgs.mtl
          ];
        };
        exes = {
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