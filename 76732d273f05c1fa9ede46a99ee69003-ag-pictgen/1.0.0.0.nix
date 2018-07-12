{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ag-pictgen";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Arie Middelkoop, Atze Dijkstra";
        maintainer = "Atze Dijkstra <atzedijkstra@gmail.com>";
        author = "Arie Middelkoop <amiddelk@gmail.com>";
        homepage = "https://github.com/UU-ComputerScience/ag-pictgen";
        url = "";
        synopsis = "Attribute Grammar picture generation";
        description = "Attribute Grammar picture generation";
        buildType = "Custom";
      };
      components = {
        exes = {
          "ag-pictgen" = {
            depends  = [
              hsPkgs.base
              hsPkgs.uulib
              hsPkgs.uuagc
              hsPkgs.containers
            ];
          };
        };
      };
    }