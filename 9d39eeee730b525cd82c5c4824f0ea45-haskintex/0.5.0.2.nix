{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskintex";
          version = "0.5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "http://daniel-diaz.github.io/projects/haskintex";
        url = "";
        synopsis = "Haskell Evaluation inside of LaTeX code.";
        description = "The /haskintex/ (Haskell in LaTeX) program is a tool that reads a LaTeX file and evaluates Haskell expressions contained\nin some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language\nextension and, in brief, anything you can do within Haskell.\nAdditionally, it is possible to include expressions of 'LaTeX' type (see /HaTeX/ package) and render them as LaTeX code.\nYou can freely add any Haskell code you need, and make this code appear /optionally/ in the LaTeX output. It is a tiny program,\nand therefore, easy to understand, use and predict.";
        buildType = "Simple";
      };
      components = {
        "haskintex" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.HaTeX
            hsPkgs.parsec
            hsPkgs.hint
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.haskell-src-exts
          ];
        };
        exes = {
          "haskintex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskintex
            ];
          };
        };
      };
    }