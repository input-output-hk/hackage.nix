{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "mime-string";
          version = "0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2005, 2007";
        maintainer = "igloo@earth.li";
        author = "Ian Lynagh";
        homepage = "";
        url = "";
        synopsis = "MIME implementation for String's.";
        description = "Implementation of the MIME RFCs 2045-2049.\nRather rough around the edges at the moment.";
        buildType = "Custom";
      };
      components = {
        mime-string = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.iconv
            hsPkgs.base64-string
          ];
        };
      };
    }