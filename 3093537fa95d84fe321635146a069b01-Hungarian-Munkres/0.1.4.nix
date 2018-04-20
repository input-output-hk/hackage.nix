{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hungarian-Munkres";
          version = "0.1.4";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2014 Kai Zhang";
        maintainer = "Kai Zhang <kai@kzhang.org>";
        author = "Kai Zhang <kai@kzhang.org>";
        homepage = "";
        url = "";
        synopsis = "A Linear Sum Assignment Problem (LSAP) solver";
        description = "This library provide a Haskell binding to the libhungarian,\na solver for Linear Sum Assignment Problem (LSAP) implemented\nin C language. It uses Hungarian algorithm\n<http://en.wikipedia.org/wiki/Hungarian_algorithm>, and runs\nin O(n^3) time. This implementation is efficient. Benchmarks\nversus pure haskell implementation are included (run\n\"cabal bench\").";
        buildType = "Simple";
      };
      components = {
        Hungarian-Munkres = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.Hungarian-Munkres
              hsPkgs.Munkres
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.random
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.Hungarian-Munkres
              hsPkgs.Munkres
              hsPkgs.random
              hsPkgs.criterion
            ];
          };
        };
      };
    }