{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsons-to-schema";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Gareth Tan";
        maintainer = "Gareth Tan";
        author = "Gareth Tan";
        homepage = "https://github.com/garetht/jsons-to-schema/README.md";
        url = "";
        synopsis = "JSON to JSON Schema";
        description = "A JSON Schema Draft 4 Generator from JSON Instances";
        buildType = "Simple";
      };
      components = {
        jsons-to-schema = {
          depends  = [
            hsPkgs.base
            hsPkgs.hjsonschema
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.semigroups
            hsPkgs.aeson
            hsPkgs.protolude
            hsPkgs.aeson-pretty
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.safe
            hsPkgs.scientific
            hsPkgs.QuickCheck
          ];
        };
        exes = {
          jsons-to-schema-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.jsons-to-schema
              hsPkgs.protolude
              hsPkgs.optparse-applicative
              hsPkgs.Glob
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.bytestring
              hsPkgs.hjsonschema
            ];
          };
        };
        tests = {
          jsons-to-schema-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.jsons-to-schema
              hsPkgs.hspec
              hsPkgs.scientific
              hsPkgs.protolude
              hsPkgs.neat-interpolation
              hsPkgs.hjsonschema
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.uniplate
              hsPkgs.vector
            ];
          };
        };
      };
    }