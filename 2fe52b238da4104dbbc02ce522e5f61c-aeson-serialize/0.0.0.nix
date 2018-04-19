{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-serialize";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kevin Cotrone <kevincotrone@gmail.com>";
        author = "Kevin Cotrone <kevincotrone@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Simple serialization functions for aeson types";
        description = "Serialize a type using json instances";
        buildType = "Simple";
      };
      components = {
        aeson-serialize = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.cereal
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.cereal
              hsPkgs.HUnit
            ];
          };
        };
      };
    }