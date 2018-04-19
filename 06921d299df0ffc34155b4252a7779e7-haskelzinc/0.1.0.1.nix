{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskelzinc";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klara.mar@cs.kuleuven.be";
        author = "Klara Marntirosian";
        homepage = "";
        url = "";
        synopsis = "CP in Haskell through MiniZinc";
        description = "This library aims to link Haskell with MiniZinc. It\nprovides an abstract syntax tree for the MiniZinc\nlanguage, with which one can define MiniZinc\nconstraint models. One can directly get the solution(s)\nof the model or separately use the corresponding modules\nof the library to pretty-print the model or parse its\nsolution(s).";
        buildType = "Simple";
      };
      components = {
        haskelzinc = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
      };
    }