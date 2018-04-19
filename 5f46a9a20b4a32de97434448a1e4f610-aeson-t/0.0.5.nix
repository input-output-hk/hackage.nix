{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-t";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Nelson <cred+github@begriffs.com>";
        author = "Joe Nelson <cred+github@begriffs.com>";
        homepage = "https://github.com/begriffs/aeson-t";
        url = "";
        synopsis = "Transform JSON";
        description = "Provides a succinct DSL to transform one JSON document to another.";
        buildType = "Simple";
      };
      components = {
        aeson-t = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson-t
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.aeson-qq
            ];
          };
        };
      };
    }