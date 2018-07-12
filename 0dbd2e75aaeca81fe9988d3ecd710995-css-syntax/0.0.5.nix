{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "css-syntax";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "This package implments a parser for the CSS syntax";
        description = "See https://drafts.csswg.org/css-syntax/";
        buildType = "Simple";
      };
      components = {
        "css-syntax" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.scientific
            hsPkgs.text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.directory
            ];
          };
        };
      };
    }