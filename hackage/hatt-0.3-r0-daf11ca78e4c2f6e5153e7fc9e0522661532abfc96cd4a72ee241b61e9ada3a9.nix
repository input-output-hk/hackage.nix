{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hatt";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Benedict Eastaugh";
      maintainer = "benedict@eastaugh.net";
      author = "Benedict Eastaugh";
      homepage = "https://github.com/beastaugh/hatt";
      url = "";
      synopsis = "A truth table generator for classical propositional logic.";
      description = "Hatt is a command-line program which prints truth tables\nfor expressions in classical propositional logic, and a\nlibrary allowing its parser, evaluator and truth table\ngenerator to be used in other programs.";
      buildType = "Simple";
    };
    components = {
      "hatt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "hatt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }