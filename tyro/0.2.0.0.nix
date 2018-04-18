{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tyro";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Richard Lupton";
        maintainer = "example@example.com";
        author = "Richard Lupton";
        homepage = "https://github.com/rlupton20/tyro#readme";
        url = "";
        synopsis = "Type derived JSON parsing using Aeson";
        description = "A library for deriving JSON parsers (using Aeson) by indicating\nJSON structure at the type level.";
        buildType = "Simple";
      };
      components = {
        tyro = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.singletons
            hsPkgs.reflection
          ];
        };
        tests = {
          tyro-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tyro
              hsPkgs.protolude
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.text
              hsPkgs.aeson
            ];
          };
        };
      };
    }