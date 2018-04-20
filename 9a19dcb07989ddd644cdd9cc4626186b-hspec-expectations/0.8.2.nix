{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-expectations";
          version = "0.8.2";
        };
        license = "MIT";
        copyright = "(c) 2011-2015 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/hspec/hspec-expectations#readme";
        url = "";
        synopsis = "Catchy combinators for HUnit";
        description = "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>";
        buildType = "Simple";
      };
      components = {
        hspec-expectations = {
          depends  = [
            hsPkgs.base
            hsPkgs.call-stack
            hsPkgs.HUnit
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.call-stack
              hsPkgs.nanospec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }