{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "octane";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/octane";
        url = "";
        synopsis = "A Rocket League replay parser.";
        description = "<https://github.com/tfausak/octane#readme>";
        buildType = "Simple";
      };
      components = {
        "octane" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.text
          ];
        };
        exes = {
          "octane" = {
            depends  = [
              hsPkgs.base
              hsPkgs.octane
            ];
          };
        };
        tests = {
          "octane-test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.octane
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
      };
    }