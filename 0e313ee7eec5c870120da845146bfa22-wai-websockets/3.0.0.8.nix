{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-websockets";
          version = "3.0.0.8";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Jasper Van der Jeugt, Ting-Yen Lai";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "Provide a bridge between WAI and the websockets package.";
        description = "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.";
        buildType = "Simple";
      };
      components = {
        wai-websockets = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.blaze-builder
            hsPkgs.case-insensitive
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.websockets
            hsPkgs.http-types
          ];
        };
        exes = {
          wai-websockets-example = {
            depends  = pkgs.lib.optionals _flags.example [
              hsPkgs.base
              hsPkgs.wai-websockets
              hsPkgs.websockets
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.wai-app-static
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.blaze-builder
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.text
              hsPkgs.file-embed
              hsPkgs.http-types
            ];
          };
        };
      };
    }