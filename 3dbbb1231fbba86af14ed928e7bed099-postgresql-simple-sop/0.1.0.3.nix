{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "postgresql-simple-sop";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomn@openbrain.org";
        author = "Tom Nielsen";
        homepage = "https://github.com/openbrainsrc/postgresql-simple-sop";
        url = "";
        synopsis = "Generic functions for postgresql-simple";
        description = "";
        buildType = "Simple";
      };
      components = {
        postgresql-simple-sop = {
          depends  = [
            hsPkgs.base
            hsPkgs.postgresql-simple
            hsPkgs.generics-sop
          ];
        };
      };
    }