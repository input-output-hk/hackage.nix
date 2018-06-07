{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickselect";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/quickselect#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/oisdk/quickselect#readme>";
        buildType = "Simple";
      };
      components = {
        quickselect = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          quickselect-doctests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.quickselect
              hsPkgs.vector
            ];
          };
          quickselect-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.quickselect
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.quickselect
              hsPkgs.random
              hsPkgs.vector
            ];
          };
        };
      };
    }