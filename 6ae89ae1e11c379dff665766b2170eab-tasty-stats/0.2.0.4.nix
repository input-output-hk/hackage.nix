{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-stats";
          version = "0.2.0.4";
        };
        license = "MIT";
        copyright = "2017 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/tasty-stats#readme";
        url = "";
        synopsis = "Collect statistics of your Tasty testsuite";
        description = "Collect statistics of your Tasty testsuite in a CSV file";
        buildType = "Simple";
      };
      components = {
        "tasty-stats" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.stm
            hsPkgs.tagged
            hsPkgs.tasty
            hsPkgs.time
          ];
        };
      };
    }