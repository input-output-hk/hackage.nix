{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "picosat";
          version = "0.1.4";
        };
        license = "MIT";
        copyright = "2014-2017 Stephen Diehl";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/sdiehl/haskell-picosat";
        url = "";
        synopsis = "Bindings to the PicoSAT solver";
        description = "`picosat` provides bindings for the fast PicoSAT solver library.";
        buildType = "Simple";
      };
      components = {
        "picosat" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
        tests = {
          "Sudoku" = {
            depends  = [
              hsPkgs.base
              hsPkgs.picosat
            ];
          };
          "Scoped" = {
            depends  = [
              hsPkgs.base
              hsPkgs.picosat
              hsPkgs.transformers
              hsPkgs.containers
            ];
          };
          "rand-shared-improvement" = {
            depends  = [
              hsPkgs.base
              hsPkgs.picosat
              hsPkgs.transformers
              hsPkgs.random
              hsPkgs.rdtsc
            ];
          };
        };
      };
    }