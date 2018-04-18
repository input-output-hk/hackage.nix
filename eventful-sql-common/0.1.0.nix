{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventful-sql-common";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Common library for SQL event stores";
        description = "Common library for SQL event stores";
        buildType = "Simple";
      };
      components = {
        eventful-sql-common = {
          depends  = [
            hsPkgs.base
            hsPkgs.eventful-core
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.split
            hsPkgs.text
            hsPkgs.uuid
          ];
        };
      };
    }