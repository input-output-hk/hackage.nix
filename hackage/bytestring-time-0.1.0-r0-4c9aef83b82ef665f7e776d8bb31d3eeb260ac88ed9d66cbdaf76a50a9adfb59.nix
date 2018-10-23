{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bytestring-time";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/bytestring-time";
      url = "";
      synopsis = "Library for Time parsing from ByteString";
      description = "Parser for ISO date from ByteString";
      buildType = "Simple";
    };
    components = {
      "bytestring-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }