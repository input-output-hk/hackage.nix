{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "edit-distance";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2013 Maximilian Bolinbroke";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://github.com/phadej/edit-distance";
        url = "";
        synopsis = "Levenshtein and restricted Damerau-Levenshtein edit distances";
        description = "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.";
        buildType = "Simple";
      };
      components = {
        edit-distance = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.random
            hsPkgs.containers
          ];
        };
        tests = {
          edit-distance-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.test-framework
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
        benchmarks = {
          edit-distance-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.random
              hsPkgs.time
              hsPkgs.process
              hsPkgs.deepseq
              hsPkgs.unix
              hsPkgs.criterion
              hsPkgs.containers
            ];
          };
        };
      };
    }