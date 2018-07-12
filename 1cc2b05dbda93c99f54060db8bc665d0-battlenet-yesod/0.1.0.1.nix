{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "battlenet-yesod";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "teo@nullable.se";
        author = "Teo Klestrup Röijezon";
        homepage = "https://github.com/teozkr/hs-battlenet/";
        url = "";
        synopsis = "Yesod integration for the battlenet package";
        description = "Yesod integration for the battlenet package";
        buildType = "Simple";
      };
      components = {
        "battlenet-yesod" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.battlenet
            hsPkgs.yesod-core
          ];
        };
      };
    }