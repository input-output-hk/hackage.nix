{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lazyset";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "carlosfreund@googlemail.com";
        author = "Carlos Freund";
        homepage = "https://github.com/happyherp/lazyset";
        url = "";
        synopsis = "Set and Map from lazy/infinite lists.";
        description = "A Set and Map implementation that is completly lazy and works for infinite sets and maps.";
        buildType = "Simple";
      };
      components = {
        lazyset = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-ordlist
            hsPkgs.containers
          ];
        };
        tests = {
          settest = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.data-ordlist
            ];
          };
          maptest = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.data-ordlist
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.data-ordlist
              hsPkgs.timeit
            ];
          };
        };
      };
    }