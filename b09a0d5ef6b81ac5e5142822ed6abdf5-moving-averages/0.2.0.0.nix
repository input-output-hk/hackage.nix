{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "moving-averages";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2017";
        maintainer = "sayhi@joshuaclayton.me";
        author = "Josh Clayton";
        homepage = "https://github.com/joshuaclayton/moving-averages#readme";
        url = "";
        synopsis = "This is a library for calculating moving averages on lists of numbers.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "moving-averages" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "moving-averages-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.moving-averages
              hsPkgs.hspec
            ];
          };
        };
      };
    }