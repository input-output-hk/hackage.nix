{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-kotlin";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2017-2018 MATSUBARA Nobutada";
        maintainer = "MATSUBARA Nobutada";
        author = "MATSUBARA Nobutada";
        homepage = "https://github.com/matsubara0507/servant-kotlin#readme";
        url = "";
        synopsis = "Automatically derive Kotlin class to query servant webservices";
        description = "See README at <https://github.com/matsubara0507/servant-kotlin#readme>";
        buildType = "Simple";
      };
      components = {
        "servant-kotlin" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.formatting
            hsPkgs.lens
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.text
            hsPkgs.time
            hsPkgs.wl-pprint-text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.formatting
              hsPkgs.hspec
              hsPkgs.http-api-data
              hsPkgs.lens
              hsPkgs.servant
              hsPkgs.servant-foreign
              hsPkgs.text
              hsPkgs.time
              hsPkgs.wl-pprint-text
            ];
          };
        };
        benchmarks = {
          "generate-test" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.formatting
              hsPkgs.http-api-data
              hsPkgs.lens
              hsPkgs.servant
              hsPkgs.servant-foreign
              hsPkgs.servant-kotlin
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.time
              hsPkgs.wl-pprint-text
            ];
          };
        };
      };
    }