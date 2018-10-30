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
        name = "abc-puzzle";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrick.bahr@gmail.com";
      author = "Patrick Bahr";
      homepage = "https://github.com/pa-ba/abc-puzzle";
      url = "";
      synopsis = "Generate instances of the ABC Logic Puzzle.";
      description = "This program generate instances of the ABC Logic Puzzle\n(<http://en.wikipedia.org/wiki/Buchstabensalat_%28logic_puzzle%29>).\nThe implementation uses the MiniSat SAT solver (<http://minisat.se/>)\nto guide the search for a valid puzzle. Each generated puzzle has one\nunique solution.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "abc-puzzle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.minisat)
            (hsPkgs.Safe)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
          ];
        };
      };
    };
  }