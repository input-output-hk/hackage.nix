{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "haskelzinc";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klara.mar@cs.kuleuven.be,\ngertjan.bottu@kuleuven.be,\nruben.pieters@cs.kuleuven.be";
        author = "Klara Marntirosian,\nGert-Jan Bottu,\nRuben Pieters";
        homepage = "";
        url = "";
        synopsis = "CP in Haskell through MiniZinc";
        description = "This package was created in the context of the <https://www.graceful-project.eu GRACeFUL project>.\n\nThe haskelzinc library defines an interface to the MiniZinc 2.1 constraint proramming\nlanguage. It provides a Haskell abstract syntax tree for the MiniZinc language, with\nwhich one can represent MiniZinc models in Haskell, a pretty printer to print the\nrepresentation of a MiniZinc model in MiniZinc, a parser that returns a\nrepresentation of the solutions obtained by running the MiniZinc model, a set of\nfunctions useful for building a custom FlatZinc solutions parser and a set of functions for\nconstructing a model with time and space constraints, including cost related constraints.\n\nAn additional module gives the possibility to directly get the solutions of a\nMiniZinc finite domain model. Option for interactive interface is provided, as well\nas choice between two solvers: the G12/FD built-in solver of FlatZinc and choco3.";
        buildType = "Simple";
      };
      components = {
        "haskelzinc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.directory
          ];
        };
      };
    }