{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "secdh";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "pgavin@gmail.com";
        author = "Peter Gavin";
        homepage = "http://github.com/pgavin/secdh";
        url = "";
        synopsis = "SECDH Machine Simulator";
        description = "SECDH stands for \"Stack-Environment-Code-Dump-Heap\", and is an\nabstract machine based on Landin's classic SECD machine for evaluation\nof lambda-calculus expressions. This machine adds a heap of suspension\ncells to the structure managed by the machine, allowing fully-lazy\nevaluation, similar to Haskell. The machine operates directly on the\nsyntax tree, as Landin's machine does. The entire implementation,\nincluding parser, evaluator, and garbage collector, occupies just over\n1100 lines of code.";
        buildType = "Simple";
      };
      components = {
        "secdh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          "secdh" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.secdh
            ];
          };
        };
      };
    }