{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "matrix-market-attoparsec";
        version = "0.1.0.8";
      };
      license = "BSD-2-Clause";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/matrix-market-attoparsec";
      url = "";
      synopsis = "Parsing and serialization functions for the NIST Matrix Market format";
      description = "Parsing and serialization functions for the NIST Matrix Market format.";
      buildType = "Simple";
    };
    components = {
      "matrix-market-attoparsec" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
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