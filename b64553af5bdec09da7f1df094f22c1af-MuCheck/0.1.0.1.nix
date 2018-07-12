{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MuCheck";
          version = "0.1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "ledu@onid.oregonstate.edu\nrahul@gopinath.org";
        author = "Duc Lee <ledu@onid.oregonstate.edu>\nRahul Gopinath <rahul@gopinath.org>";
        homepage = "https://bitbucket.com/osu-testing/mucheck";
        url = "";
        synopsis = "Automated Mutation Testing";
        description = "This package defines a mutation analysis library for haskell\nprograms. It does this by parsing the haskell source, and\nreplacing a few of the common haskell functions and operators\nwith other, but similar operators and functions, and running\nthe testsuite to check whether the difference has been\ndetected. Currently, it supports QuickCheck and HUnit tests.";
        buildType = "Simple";
      };
      components = {
        "MuCheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.syb
            hsPkgs.time
            hsPkgs.QuickCheck
            hsPkgs.hint
            hsPkgs.mtl
            hsPkgs.HUnit
            hsPkgs.filepath
          ];
        };
        exes = {
          "mucheck" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.QuickCheck
              hsPkgs.hint
              hsPkgs.mtl
              hsPkgs.HUnit
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.MuCheck
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.filepath
            ];
          };
        };
      };
    }