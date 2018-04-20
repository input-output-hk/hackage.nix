{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "clist";
          version = "0.3.0.0";
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
            hsPkgs.peano
            hsPkgs.natural-induction
          ];
        };
      };
    }