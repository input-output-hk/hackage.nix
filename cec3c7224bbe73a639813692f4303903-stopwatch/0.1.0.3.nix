{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test_delay_upper_bound = false;
      test_threaded = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stopwatch";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Toshio Ito <debug.ito@gmail.com>";
        author = "Toshio Ito <debug.ito@gmail.com>";
        homepage = "https://github.com/debug-ito/stopwatch";
        url = "";
        synopsis = "A simple stopwatch utility";
        description = "A simple stopwatch utility";
        buildType = "Simple";
      };
      components = {
        stopwatch = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.clock
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.stopwatch
              hsPkgs.hspec
              hsPkgs.clock
            ];
          };
        };
      };
    }