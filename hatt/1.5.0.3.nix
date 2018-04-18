{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hatt";
          version = "1.5.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Benedict Eastaugh";
        maintainer = "benedict@eastaugh.net";
        author = "Benedict Eastaugh";
        homepage = "http://extralogical.net/projects/hatt";
        url = "";
        synopsis = "A truth table generator for classical propositional logic.";
        description = "Hatt is a command-line program which prints truth tables\nfor expressions in classical propositional logic, and a\nlibrary allowing its parser, evaluator and truth table\ngenerator to be used in other programs. It includes support\nfor converting logical expressions into several normal\nforms.";
        buildType = "Simple";
      };
      components = {
        hatt = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.QuickCheck
            hsPkgs.ansi-wl-pprint
          ];
        };
        exes = {
          hatt = {
            depends  = [
              hsPkgs.base
              hsPkgs.hatt
              hsPkgs.cmdargs
              hsPkgs.haskeline
            ];
          };
        };
        tests = {
          test-hatt = {
            depends  = [
              hsPkgs.base
              hsPkgs.hatt
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }