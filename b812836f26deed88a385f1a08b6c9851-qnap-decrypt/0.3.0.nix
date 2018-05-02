{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "qnap-decrypt";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 ALeX Kazik";
        maintainer = "alex@kazik.de";
        author = "ALeX Kazik";
        homepage = "https://github.com/alexkazik/qnap-decrypt#readme";
        url = "";
        synopsis = "Decrypt files encrypted by QNAP's Hybrid Backup Sync";
        description = "Please see the README on Github at <https://github.com/alexkazik/qnap-decrypt#readme>";
        buildType = "Simple";
      };
      components = {
        qnap-decrypt = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cipher-aes128
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.crypto-api
            hsPkgs.directory
            hsPkgs.streaming-commons
            hsPkgs.tagged
            hsPkgs.utf8-string
          ];
        };
        exes = {
          qnap-decrypt = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cipher-aes128
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.crypto-api
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.qnap-decrypt
              hsPkgs.streaming-commons
              hsPkgs.tagged
              hsPkgs.utf8-string
            ];
          };
        };
        tests = {
          qnap-decrypt-test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cipher-aes128
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.crypto-api
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.qnap-decrypt
              hsPkgs.streaming-commons
              hsPkgs.tagged
              hsPkgs.temporary
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }