{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attoparsec-varword";
          version = "0.1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "2018 Concert Audio Technologies Ltd";
        maintainer = "paul@concertdaw.co.uk";
        author = "Paul Weaver";
        homepage = "https://github.com/concert/hs-varword#readme";
        url = "";
        synopsis = "Variable-length integer decoding for Attoparsec";
        description = "A collection of 'Data.Attoparsec.Parser's that decode integer types from\ncompact, variable-length representations.";
        buildType = "Simple";
      };
      components = {
        attoparsec-varword = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
          ];
        };
        tests = {
          attoparsec-varword-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec-varword
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.bytestring-builder-varword
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }