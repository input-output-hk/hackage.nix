{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "PostgreSQL";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2006, 2007";
        maintainer = "igloo@earth.li";
        author = "Ian Lynagh";
        homepage = "";
        url = "";
        synopsis = "Thin wrapper over the C postgresql library";
        description = "A thin wrapper over the C postgresql library. Not yet complete,\nbut certainly usable. Designed for PostgreSQL 8.1, but may be usable\nwith other versions.";
        buildType = "Custom";
      };
      components = {
        PostgreSQL = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }