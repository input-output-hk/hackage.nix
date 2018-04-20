{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "templater";
          version = "0.0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "geraud@gmail.com";
        author = "Geraud Boyer";
        homepage = "https://github.com/geraud/templater";
        url = "";
        synopsis = "Simple string templater";
        description = "";
        buildType = "Simple";
      };
      components = {
        templater = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.templater
              hsPkgs.hspec
              hsPkgs.hspec-attoparsec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.text
            ];
          };
        };
      };
    }