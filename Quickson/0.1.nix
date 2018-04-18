{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Quickson";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Scott Sadler";
        homepage = "https://github.com/ssadler/quickson";
        url = "";
        synopsis = "Quick JSON extractions with Aeson";
        description = "";
        buildType = "Simple";
      };
      components = {
        Quickson = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.either
          ];
        };
      };
    }