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
        name = "radium";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/radium";
      url = "";
      synopsis = "Chemistry";
      description = "This library simplifies writing application for chemistry. Currently includes:\n\n* Element - Periodic table and basic information about elements\n\n* Formula - Formula parser. Formula can be provided as Ce3FeO2";
      buildType = "Simple";
    };
    components = {
      "radium" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }