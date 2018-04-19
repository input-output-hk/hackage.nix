{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-contrib";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "(c) 2011-2015 Simon Hengel,\n(c) 2014 Junji Hashimoto";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "Contributed functionality for Hspec";
        description = "Contributed functionality for Hspec";
        buildType = "Simple";
      };
      components = {
        hspec-contrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec-core
            hsPkgs.HUnit
            hsPkgs.logging-facade
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec-core
              hsPkgs.HUnit
              hsPkgs.logging-facade
              hsPkgs.hspec-contrib
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }