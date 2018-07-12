{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "remarks";
          version = "0.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "2017 DIKU";
        maintainer = "oleks@oleks.info";
        author = "Oleks Shturmov <oleks@oleks.info>, Michael Kirkedal";
        homepage = "https://github.com/oleks/remarks#readme";
        url = "";
        synopsis = "A DSL for marking student work";
        description = "A DSL for marking student work; see README.md for further details.";
        buildType = "Simple";
      };
      components = {
        "remarks" = {
          depends  = [
            hsPkgs.base
            hsPkgs.GenericPretty
            hsPkgs.pretty
          ];
        };
        exes = {
          "remarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.remarks
              hsPkgs.GenericPretty
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          "remarks-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.remarks
              hsPkgs.GenericPretty
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-golden
            ];
          };
        };
      };
    }