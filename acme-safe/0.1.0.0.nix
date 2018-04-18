{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-safe";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "";
        author = "Francesco Gazzetta";
        homepage = "http://github.com/fgaz/acme-safe";
        url = "";
        synopsis = "Safe versions of some infamous haskell functions such as fromJust";
        description = "";
        buildType = "Simple";
      };
      components = {
        acme-safe = {
          depends  = [
            hsPkgs.base
            hsPkgs.acme-dont
          ];
        };
      };
    }