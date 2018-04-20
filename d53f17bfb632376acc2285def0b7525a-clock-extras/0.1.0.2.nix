{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clock-extras";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "skedge.me";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "";
        url = "";
        synopsis = "A couple functions that probably should be in the 'clock' package";
        description = "A couple functions that probably should be in the 'clock' package, such as 'elapsedTime' and 'diffSeconds'.";
        buildType = "Simple";
      };
      components = {
        clock-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.clock
          ];
        };
        tests = {
          clock-extras-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.clock-extras
              hsPkgs.hspec
            ];
          };
        };
      };
    }