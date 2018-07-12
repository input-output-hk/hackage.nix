{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      boogaloo = true;
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-boogie";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nadia.polikarpova@gmail.com";
        author = "Nadia Polikarpova";
        homepage = "https://bitbucket.org/nadiapolikarpova/boogaloo";
        url = "";
        synopsis = "Interpreter and language infrastructure for Boogie.";
        description = "Boogaloo is an interpreter and run-time assertion checker for the Boogie intermediate verification language.\nThe package also provides a language infrastructure library, including a Boogie AST, parser, type checker, and pretty-printer.";
        buildType = "Simple";
      };
      components = {
        "language-boogie" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.stream-monad
            hsPkgs.random
            hsPkgs.lens
          ];
        };
        exes = {
          "boogaloo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-boogie
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.cmdargs
              hsPkgs.random
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.transformers
              hsPkgs.stream-monad
              hsPkgs.ansi-terminal
              hsPkgs.random
              hsPkgs.lens
            ];
          };
          "boogaloo-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-boogie
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.transformers
              hsPkgs.stream-monad
              hsPkgs.random
              hsPkgs.lens
            ];
          };
        };
      };
    }