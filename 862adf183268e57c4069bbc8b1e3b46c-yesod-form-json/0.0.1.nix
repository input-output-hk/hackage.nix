{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-form-json";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "Anton Cheshkov";
        maintainer = "Anton Cheshkov <acheshkov@gmail.com>";
        author = "Anton Cheshkov <acheshkov@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Extension for Yesod web framework to handle JSON requests as applicative forms";
        description = "Extension for Yesod web framework to handle JSON requests as applicative forms";
        buildType = "Simple";
      };
      components = {
        "yesod-form-json" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-form
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.yesod-core
            hsPkgs.aeson
          ];
        };
      };
    }