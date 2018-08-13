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
        name = "bytestring-builder-varword";
        version = "0.1.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "2018 Concert Audio Technologies Ltd";
      maintainer = "paul@concertdaw.co.uk";
      author = "Paul Weaver";
      homepage = "https://github.com/concert/hs-varword#readme";
      url = "";
      synopsis = "Variable-length integer encoding";
      description = "A collection of functions for producing 'Data.ByteString.Builder.Builder's\nthat encode integer types into compact, variable-length representations.";
      buildType = "Simple";
    };
    components = {
      "bytestring-builder-varword" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "bytestring-builder-varword-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring-builder-varword)
            (hsPkgs.attoparsec-varword)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }