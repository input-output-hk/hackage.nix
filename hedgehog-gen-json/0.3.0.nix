{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hedgehog-gen-json";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "2018 Amr Hassan";
        maintainer = "amr.hassan@gmail.com";
        author = "Amr Hassan";
        homepage = "https://github.com/amrhassan/haskell-hedgehog-gen-json";
        url = "";
        synopsis = "JSON generators for Hedgehog";
        description = "Generate JSON values for Hedgehog tests";
        buildType = "Simple";
      };
      components = {
        hedgehog-gen-json = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.hedgehog
            hsPkgs.lens
            hsPkgs.protolude
            hsPkgs.regex-genex
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.tz
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.hedgehog
              hsPkgs.lens
              hsPkgs.protolude
              hsPkgs.regex-genex
              hsPkgs.regex-pcre
              hsPkgs.scientific
              hsPkgs.tasty
              hsPkgs.tasty-hedgehog
              hsPkgs.text
              hsPkgs.time
              hsPkgs.timerep
              hsPkgs.tz
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }