{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "turingMachine";
        version = "1.0.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Jorge Santiago Alvarez Cuadros";
      maintainer = "sanjorgek@ciencias.unam.mx";
      author = "Jorge Santiago Alvarez Cuadros";
      homepage = "https://github.com/sanjorgek/turingMachine";
      url = "";
      synopsis = "An implementation of Turing Machine and Automaton";
      description = "An implementation of Turing Machine and Automaton for\nlanguage theory";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "state" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspecVariant)
            (hsPkgs.QuickCheck)
            (hsPkgs.QuickCheckVariant)
            (hsPkgs.turingMachine)
          ];
        };
        "sigma" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspecVariant)
            (hsPkgs.QuickCheck)
            (hsPkgs.QuickCheckVariant)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.turingMachine)
          ];
        };
        "finite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspecVariant)
            (hsPkgs.QuickCheck)
            (hsPkgs.QuickCheckVariant)
            (hsPkgs.containers)
            (hsPkgs.turingMachine)
          ];
        };
      };
    };
  }