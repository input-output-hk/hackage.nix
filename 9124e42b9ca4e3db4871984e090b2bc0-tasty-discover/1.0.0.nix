{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-discover";
          version = "1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2016 Luke Murphy";
        maintainer = "Luke Murphy <lukewm@riseup.net>";
        author = "Luke Murphy <lukewm@riseup.net>";
        homepage = "https://github.com/lwm/tasty-discover/";
        url = "";
        synopsis = "Automatically discover and run Tasty framework tests.";
        description = "Automatically discover and run Tasty framework tests.";
        buildType = "Simple";
      };
      components = {
        tasty-discover = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.tasty
            hsPkgs.tasty-th
            hsPkgs.tasty-hunit
            hsPkgs.tasty-quickcheck
            hsPkgs.tasty-hspec
          ];
        };
        exes = {
          tasty-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.tasty-discover
              hsPkgs.tasty-th
            ];
          };
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty-discover
            ];
          };
        };
      };
    }