{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "teardown";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "© 2017 Roman Gonzalez";
        maintainer = "romanandreg@gmail.com";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-teardown#readme";
        url = "";
        synopsis = "Build composable, idempotent & transparent application cleanup sub-routines";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "teardown" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.text
            hsPkgs.time
            hsPkgs.ansi-wl-pprint
          ];
        };
        tests = {
          "teardown-doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.time
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.QuickCheck
              hsPkgs.teardown
            ];
          };
          "teardown-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.time
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-hspec
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-rerun
              hsPkgs.teardown
            ];
          };
        };
        benchmarks = {
          "teardown-benchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.time
              hsPkgs.criterion
              hsPkgs.teardown
            ];
          };
        };
      };
    }