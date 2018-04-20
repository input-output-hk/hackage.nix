{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      openssh = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "crypto-pubkey-openssh";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "Fedor Gogolev <knsd@knsd.net>";
        maintainer = "Fedor Gogolev <knsd@knsd.net>";
        author = "Fedor Gogolev <knsd@knsd.net>\nMaxim Mitroshin <rocco66max@gmail.com>\nThomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "https://github.com/knsd/crypto-pubkey-openssh";
        url = "";
        synopsis = "OpenSSH keys decoder/encoder";
        description = "OpenSSH keys decoder/encoder";
        buildType = "Simple";
      };
      components = {
        crypto-pubkey-openssh = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.cereal
            hsPkgs.attoparsec
            hsPkgs.crypto-pubkey-types
            hsPkgs.pem
            hsPkgs.asn1-data
          ];
        };
        tests = {
          crypto-pubkey-openssh-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.cereal
              hsPkgs.attoparsec
              hsPkgs.crypto-pubkey-types
              hsPkgs.pem
              hsPkgs.asn1-data
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.temporary
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.deepseq
            ];
          };
        };
      };
    }