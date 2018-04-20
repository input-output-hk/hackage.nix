{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-litobj";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathan.kochems@gmail.com";
        author = "Jonathan Kochems";
        homepage = "https://github.com/jonathankochems/json-litobj";
        url = "";
        synopsis = "Extends Text.JSON to handle literal JS objects.";
        description = "This module extends Text.JSON to enable the decoding of strings containing literal JS objects.";
        buildType = "Simple";
      };
      components = {
        json-litobj = {
          depends  = [
            hsPkgs.base
            hsPkgs.json
          ];
        };
        tests = {
          test-json-litobj = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.json
              hsPkgs.json-litobj
            ];
          };
        };
      };
    }