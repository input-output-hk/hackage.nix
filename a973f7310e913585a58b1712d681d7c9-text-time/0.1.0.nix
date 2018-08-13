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
        name = "text-time";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/text-time";
      url = "";
      synopsis = "Library for Time parsing from Text into UTCTime";
      description = "Fast parser for ISO date from Text to UTCTime";
      buildType = "Simple";
    };
    components = {
      "text-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
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
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }