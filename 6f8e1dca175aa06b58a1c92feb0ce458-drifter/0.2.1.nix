{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "drifter";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Xavier <michael@michaelxavier.net>";
        author = "AndrewRademacher";
        homepage = "https://github.com/AndrewRademacher/drifter";
        url = "";
        synopsis = "Simple schema management for arbitrary databases.";
        description = "Simple support for migrating database schemas, which allows\nhaskell functions to be run as a part of the migration.";
        buildType = "Simple";
      };
      components = {
        drifter = {
          depends  = [
            hsPkgs.base
            hsPkgs.fgl
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.drifter
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }