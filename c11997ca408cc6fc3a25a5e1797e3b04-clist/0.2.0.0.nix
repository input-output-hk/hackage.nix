{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "clist";
          version = "0.2.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "https://github.com/strake/clist.hs";
        url = "";
        synopsis = "Counted list";
        description = "";
        buildType = "Simple";
      };
      components = {
        clist = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.peano
          ];
        };
      };
    }