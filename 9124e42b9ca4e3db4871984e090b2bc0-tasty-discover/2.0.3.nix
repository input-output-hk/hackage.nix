{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-discover";
          version = "2.0.3";
        };
        license = "MIT";
        copyright = "2016 Luke Murphy";
        maintainer = "Luke Murphy <lukewm@riseup.net>";
        author = "Luke Murphy";
        homepage = "https://github.com/lwm/tasty-discover#readme";
        url = "";
        synopsis = "Test discovery for the tasty framework.";
        description = "Automatic test discovery and runner for the tasty framework.\nPrefix your test case names and tasty-discover will discover, collect and run them. All popular test libraries are covered. Configure once and then just write your tests. Avoid forgetting to add test modules to your Cabal/Hpack files. Tasty ingredients are included along with various configuration options for different use cases. Please see the `README.md` below for how to get started.";
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