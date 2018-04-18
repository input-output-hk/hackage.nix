{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "flock";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2007";
        maintainer = "igloo@earth.li";
        author = "Ian Lynagh";
        homepage = "";
        url = "";
        synopsis = "Wrapper for flock(2)";
        description = "Simple wrapper around flock(2).";
        buildType = "Custom";
      };
      components = {
        flock = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.mtl
          ];
        };
      };
    }