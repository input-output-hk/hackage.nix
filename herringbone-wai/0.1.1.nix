{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "herringbone-wai";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "harry@garrood.me";
        author = "Harry Garrood";
        homepage = "";
        url = "";
        synopsis = "Wai adapter for the Herringbone web asset preprocessor.";
        description = "Wai adapter for the Herringbone web asset preprocessor.";
        buildType = "Simple";
      };
      components = {
        herringbone-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.herringbone
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.time
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.http-types
          ];
        };
      };
    }