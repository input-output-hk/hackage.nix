{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "th-lift";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2006";
        maintainer = "igloo@earth.li";
        author = "Ian Lynagh";
        homepage = "";
        url = "";
        synopsis = "Derive Template Haskell's Lift class for datatypes.";
        description = "Derive Template Haskell's Lift class for datatypes.";
        buildType = "Custom";
      };
      components = {
        "th-lift" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }