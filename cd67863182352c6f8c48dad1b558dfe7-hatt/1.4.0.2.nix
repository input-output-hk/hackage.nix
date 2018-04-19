{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hatt";
          version = "1.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Benedict Eastaugh";
        maintainer = "benedict@eastaugh.net";
        author = "Benedict Eastaugh";
        homepage = "http://extralogical.net/projects/hatt";
        url = "";
        synopsis = "A truth table generator for classical propositional logic.";
        description = "Hatt is a command-line program which prints truth tables\nfor expressions in classical propositional logic, and a\nlibrary allowing its parser, evaluator and truth table\ngenerator to be used in other programs.";
        buildType = "Simple";
      };
      components = {
        hatt = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.ansi-wl-pprint
          ];
        };
        exes = {
          hatt = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.ansi-wl-pprint
              hsPkgs.haskeline
            ];
          };
        };
      };
    }