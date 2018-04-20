{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "json-fu";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "(c) 2013 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Generic JSON serialization / deserialization";
        description = "A generic JSON serializer that converts fields to `snake_case`\nand optionally strips the constructor name from fields, so\nthat the generated JSON is compatible with most web services.\n\nHave a look at <https://github.com/sol/json-fu#readme> for\nexamples.";
        buildType = "Simple";
      };
      components = {
        json-fu = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.attoparsec
            hsPkgs.time
            hsPkgs.syb
            hsPkgs.mtl
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.hashable
              hsPkgs.attoparsec
              hsPkgs.time
              hsPkgs.syb
              hsPkgs.mtl
              hsPkgs.hspec
            ];
          };
        };
      };
    }