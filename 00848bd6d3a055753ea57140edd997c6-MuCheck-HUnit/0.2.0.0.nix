{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MuCheck-HUnit";
          version = "0.2.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "rahul@gopinath.org";
        author = "Rahul Gopinath <rahul@gopinath.org>";
        homepage = "https://bitbucket.com/osu-testing/mucheck-hunit";
        url = "";
        synopsis = "Automated Mutation Testing for HUnit tests";
        description = "This package contains the test adapter for HUnit tests to use it with MuCheck";
        buildType = "Simple";
      };
      components = {
        "MuCheck-HUnit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.MuCheck
          ];
        };
        exes = {
          "mucheck-hunit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.MuCheck
            ];
          };
        };
      };
    }