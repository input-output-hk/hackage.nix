{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "matrix-market-attoparsec";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
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
        matrix-market-attoparsec = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.scientific
            hsPkgs.vector
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.matrix-market-attoparsec
            ];
          };
        };
      };
    }