{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-types";
          version = "0.1.0.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "Type definitions for objects used by the GitHub v3 API";
        description = "This package includes (some) type definitions for objects\nwhich are consumed or produced by the GitHub v3 API.";
        buildType = "Simple";
      };
      components = {
        "github-types" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }