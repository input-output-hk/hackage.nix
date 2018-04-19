{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "funsat";
          version = "0.5.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Denis Bueno <dbueno@gmail.com>";
        author = "Denis Bueno";
        homepage = "http://github.com/dbueno/funsat";
        url = "";
        synopsis = "A modern DPLL-style SAT solver";
        description = "Funsat is a native Haskell SAT solver that uses modern techniques for\nsolving SAT instances.  Current features include two-watched literals,\nconflict-directed learning, non-chronological backtracking, a VSIDS-like\ndynamic variable ordering, and restarts.  Our goal is to facilitate\nconvenient embedding of a reasonably fast SAT solver as a constraint\nsolving backend in other applications.\nCurrently along this theme we provide /unsatisfiable core/ generation,\ngiving (hopefully) small unsatisfiable sub-problems of unsatisfiable input\nproblems (see \"Funsat.Resolution\").";
        buildType = "Simple";
      };
      components = {
        funsat = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.array
            hsPkgs.QuickCheck
            hsPkgs.parse-dimacs
            hsPkgs.bitset
            hsPkgs.fgl
          ];
        };
        exes = {
          funsat = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.QuickCheck
              hsPkgs.parse-dimacs
              hsPkgs.bitset
              hsPkgs.fgl
              hsPkgs.time
            ];
          };
        };
      };
    }