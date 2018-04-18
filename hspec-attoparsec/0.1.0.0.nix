{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-attoparsec";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Alp Mestanogullari";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
        homepage = "http://github.com/alpmestan/hspec-attoparsec";
        url = "";
        synopsis = "Utility functions for testing your attoparsec parsers with hspec";
        description = "This package provides some helper functions for testing attoparsec parsers with hspec.\n\nSee the documentation in @Test.Hspec.Attoparsec@ for examples, or this package's own test suite.";
        buildType = "Simple";
      };
      components = {
        hspec-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.hspec-expectations
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.attoparsec
            ];
          };
        };
      };
    }