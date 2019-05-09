{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "openpgp-asciiarmor"; version = "0.1.1"; };
      license = "ISC";
      copyright = "2012-2018 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/openpgp-asciiarmor";
      url = "";
      synopsis = "OpenPGP (RFC4880) ASCII Armor codec";
      description = "OpenPGP (RFC4880) ASCII Armor codec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }