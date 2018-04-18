{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16.0";
        identifier = {
          name = "pathfindingcore";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jason.bertsche@gmail.com";
        author = "Jason Bertsche";
        homepage = "http://github.com/TheBizzle";
        url = "";
        synopsis = "A toy pathfinding library";
        description = "A toy pathfinding library";
        buildType = "Simple";
      };
      components = {
        pathfindingcore = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.split
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.pathfindingcore
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }