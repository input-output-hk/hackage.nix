{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hedgehog-gen-json";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2017 Amr Hassan";
        maintainer = "amr.hassan@gmail.com";
        author = "Amr Hassan";
        homepage = "https://github.com/githubuser/haskell-hedgehog-gen-json#readme";
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
              hsPkgs.regex-posix
              hsPkgs.scientific
              hsPkgs.tasty
              hsPkgs.tasty-hedgehog
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }