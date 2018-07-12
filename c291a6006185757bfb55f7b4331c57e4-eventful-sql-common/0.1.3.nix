{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventful-sql-common";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "https://github.com/jdreaver/eventful#readme";
        url = "";
        synopsis = "Common library for SQL event stores";
        description = "Common library for SQL event stores";
        buildType = "Simple";
      };
      components = {
        "eventful-sql-common" = {
          depends  = [
            hsPkgs.base
            hsPkgs.eventful-core
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.text
            hsPkgs.uuid
          ];
        };
      };
    }