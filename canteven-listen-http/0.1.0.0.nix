{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "canteven-listen-http";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "eglassercamp@sumall.com";
        author = "Ethan Glasser-Camp";
        homepage = "";
        url = "";
        synopsis = "data types to describe HTTP services";
        description = "A few datatypes useful for describing what ports an HTTP service listens on.";
        buildType = "Simple";
      };
      components = {
        canteven-listen-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
          ];
        };
      };
    }