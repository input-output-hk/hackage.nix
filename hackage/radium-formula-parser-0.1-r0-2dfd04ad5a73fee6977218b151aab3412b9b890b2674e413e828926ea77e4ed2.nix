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
        name = "radium-formula-parser";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/radium-formula-parser";
      url = "";
      synopsis = "Chemistry";
      description = "Parser for chemical formulas";
      buildType = "Simple";
    };
    components = {
      "radium-formula-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
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
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }