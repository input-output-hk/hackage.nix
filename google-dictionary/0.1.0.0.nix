{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "google-dictionary";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mitchellwrosen@gmail.com";
        author = "Mitchell Rosen";
        homepage = "https://github.com/mitchellwrosen/google-dictionary-api";
        url = "";
        synopsis = "Simple interface to the google.com/dictionary API";
        description = "";
        buildType = "Simple";
      };
      components = {
        google-dictionary = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.HTTP
            hsPkgs.bytestring
          ];
        };
      };
    }