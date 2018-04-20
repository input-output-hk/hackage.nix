{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lenz";
          version = "0.2.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Van Laarhoven lenses";
        description = "";
        buildType = "Simple";
      };
      components = {
        lenz = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.transformers
          ];
        };
      };
    }