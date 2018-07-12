{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-webhook-handler";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "GitHub WebHook Handler";
        description = "Generic definition of a GitHub Webhook Handler. Specialized version for Snap\ncan be found in the 'github-webhook-handler-snap' package.";
        buildType = "Simple";
      };
      components = {
        "github-webhook-handler" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.github-types
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.cryptohash
            hsPkgs.uuid
          ];
        };
      };
    }