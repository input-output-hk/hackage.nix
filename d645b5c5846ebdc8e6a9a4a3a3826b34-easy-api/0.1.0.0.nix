{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "easy-api";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "http://github.com/sanetracker/easy-api";
        url = "";
        synopsis = "Utility code for building HTTP API bindings more quickly.";
        description = "Utility code for building HTTP API bindings more quickly.";
        buildType = "Simple";
      };
      components = {
        easy-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.http-conduit
            hsPkgs.resourcet
            hsPkgs.either
          ];
        };
      };
    }