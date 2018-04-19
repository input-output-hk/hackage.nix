{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-api";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Todd Mohney";
        maintainer = "Todd Mohney <toddmohney@gmail.com>";
        author = "Todd Mohney";
        homepage = "https://github.com/toddmohney/json-api";
        url = "";
        synopsis = "Utilities for generating JSON-API payloads";
        description = "Provides utilities for deriving JSON payloads conformant to the json-api\nspecification";
        buildType = "Simple";
      };
      components = {
        json-api = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.lens-aeson
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.url
          ];
        };
        tests = {
          json-api-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.hspec
              hsPkgs.json-api
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.text
              hsPkgs.url
            ];
          };
        };
      };
    }