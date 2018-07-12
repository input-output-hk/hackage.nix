{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "openpgp-asciiarmor";
          version = "0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2012, Clint Adams";
        maintainer = "Clint Adams <clint@debian.org>";
        author = "Clint Adams";
        homepage = "http://floss.scru.org/openpgp-asciiarmor";
        url = "";
        synopsis = "OpenPGP (RFC4880) ASCII Armor codec";
        description = "OpenPGP (RFC4880) ASCII Armor codec";
        buildType = "Simple";
      };
      components = {
        "openpgp-asciiarmor" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }