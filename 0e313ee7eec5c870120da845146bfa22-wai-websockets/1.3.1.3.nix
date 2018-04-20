{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-websockets";
          version = "1.3.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Jasper Van der Jeugt";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "Provide a bridge betweeen WAI and the websockets package.";
        description = "This is primarily intended for use with Warp and its settingsIntercept.";
        buildType = "Simple";
      };
      components = {
        wai-websockets = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.wai
            hsPkgs.enumerator
            hsPkgs.network-enumerator
            hsPkgs.blaze-builder
            hsPkgs.case-insensitive
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.websockets
            hsPkgs.warp
          ];
        };
      };
    }