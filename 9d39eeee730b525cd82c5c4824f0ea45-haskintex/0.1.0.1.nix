{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskintex";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "http://daniel-diaz.github.io/projects/haskintex";
        url = "";
        synopsis = "Haskell Evaluation inside of LaTeX code.";
        description = "The /haskintex/ program is a tool that reads a LaTeX file and evaluates Haskell expressions contained\nin some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language\nextension and, in brief, anything you can do within Haskell. You can freely add any Haskell code you need, and make\nthis code appear /optionally/ in the LaTeX output. It is a tiny program, and therefore, easy to understand, use and\npredict.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskintex = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.HaTeX
              hsPkgs.attoparsec
            ];
          };
        };
      };
    }