{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MuCheck-Hspec";
          version = "0.3.0.4";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "rahul@gopinath.org";
        author = "Rahul Gopinath <rahul@gopinath.org>";
        homepage = "https://bitbucket.com/osu-testing/mucheck-hspec";
        url = "";
        synopsis = "Automated Mutation Testing for Hspec tests";
        description = "This package contains the test adapter for Hspec tests to use it with MuCheck";
        buildType = "Simple";
      };
      components = {
        MuCheck-Hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.hspec-core
            hsPkgs.MuCheck
          ];
        };
        exes = {
          mucheck-hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.MuCheck
            ];
          };
        };
      };
    }