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
        name = "matrix-market-attoparsec";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/matrix-market-attoparsec";
      url = "";
      synopsis = "Attoparsec parsers for the NIST Matrix Market format";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.matrix-market-attoparsec)
          ];
        };
      };
    };
  }