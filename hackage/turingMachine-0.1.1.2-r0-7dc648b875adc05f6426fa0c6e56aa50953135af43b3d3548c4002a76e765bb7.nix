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
        name = "turingMachine";
        version = "0.1.1.2";
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
      "turingMachine" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }