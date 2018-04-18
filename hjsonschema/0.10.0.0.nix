{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hjsonschema";
          version = "0.10.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@housejeffries.com";
        author = "Ian Grant Jeffries";
        homepage = "https://github.com/seagreen/hjsonschema";
        url = "";
        synopsis = "JSON Schema library";
        description = "";
        buildType = "Simple";
      };
      components = {
        hjsonschema = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.file-embed
            hsPkgs.filepath
            hsPkgs.hjsonpointer
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.pcre-heavy
            hsPkgs.QuickCheck
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          local = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hjsonpointer
              hsPkgs.hjsonschema
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
          remote = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hjsonschema
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.wai-app-static
              hsPkgs.warp
            ];
          };
        };
      };
    }