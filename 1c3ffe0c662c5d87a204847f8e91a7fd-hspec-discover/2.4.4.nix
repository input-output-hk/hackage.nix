{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-discover";
          version = "2.4.4";
        };
        license = "MIT";
        copyright = "(c) 2012-2017 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "Automatically discover and run Hspec tests";
        description = "Automatically discover and run Hspec tests\n\n<http://hspec.github.io/hspec-discover.html>";
        buildType = "Simple";
      };
      components = {
        hspec-discover = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
        exes = {
          hspec-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec-discover
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec-discover
              hsPkgs.hspec-meta
            ];
          };
        };
      };
    }