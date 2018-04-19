{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "lenz-template";
          version = "0.2.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Van Laarhoven lens templates";
        description = "";
        buildType = "Simple";
      };
      components = {
        lenz-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.lenz
          ];
        };
      };
    }