{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-discover";
          version = "2.0.0";
        };
        license = "MIT";
        copyright = "2016 Luke Murphy";
        maintainer = "Luke Murphy <lukewm@riseup.net>";
        author = "Luke Murphy <lukewm@riseup.net>";
        homepage = "https://github.com/lwm/tasty-discover#readme";
        url = "";
        synopsis = "Test discovery for the tasty framework.";
        description = "Test discovery for the tasty framework.";
        buildType = "Simple";
      };
      components = {
        "tasty-discover" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          "tasty-discover" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.tasty-discover
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-discover
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }