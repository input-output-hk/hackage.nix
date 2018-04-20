{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "distance-of-time";
          version = "0.1.2.0";
        };
        license = "MIT";
        copyright = "2017";
        maintainer = "sayhi@joshuaclayton.me";
        author = "Josh Clayton";
        homepage = "https://github.com/joshuaclayton/distance-of-time#readme";
        url = "";
        synopsis = "Generate readable distances between times.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        distance-of-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
        tests = {
          distance-of-time-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.distance-of-time
              hsPkgs.hspec
              hsPkgs.time
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }