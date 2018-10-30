{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "comma";
        version = "1.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2017 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/comma";
      url = "";
      synopsis = "CSV Parser & Producer";
      description = "Comma is a simple CSV format parser and producer that\nclosely follows the RFC4180 document.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
        ];
      };
      tests = {
        "comma-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.comma)
            (hsPkgs.text)
          ];
        };
      };
    };
  }