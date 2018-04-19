{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-discover";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2012 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Automatically discover and run Hspec tests";
        description = "Documentation is here: <https://github.com/hspec/hspec/blob/master/hspec-discover/README.markdown>";
        buildType = "Simple";
      };
      components = {
        hspec-discover = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
          ];
        };
        exes = {
          hspec-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.hspec-shouldbe
            ];
          };
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec-shouldbe
              hsPkgs.hspec-discover
            ];
          };
          integration-test-empty = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec-discover
            ];
          };
        };
      };
    }