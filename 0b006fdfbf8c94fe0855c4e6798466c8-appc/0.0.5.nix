{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "appc";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "app container types and tools";
        description = "See https://github.com/appc/spec";
        buildType = "Simple";
      };
      components = {
        appc = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.semver
            hsPkgs.uuid
            hsPkgs.text
          ];
        };
        exes = {
          appc = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.optparse-applicative
              hsPkgs.semver
              hsPkgs.uuid
              hsPkgs.text
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.smallcheck
              hsPkgs.hspec-smallcheck
              hsPkgs.appc
              hsPkgs.text
              hsPkgs.semver
              hsPkgs.uuid
              hsPkgs.aeson
            ];
          };
        };
      };
    }