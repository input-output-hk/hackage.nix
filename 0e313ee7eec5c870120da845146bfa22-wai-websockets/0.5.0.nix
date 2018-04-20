{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-websockets";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
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
            hsPkgs.wai
            hsPkgs.enumerator
            hsPkgs.network-enumerator
            hsPkgs.blaze-builder
            hsPkgs.case-insensitive
            hsPkgs.network
            hsPkgs.websockets
          ];
        };
        exes = {
          wai-websockets-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-websockets
              hsPkgs.websockets
              hsPkgs.network-enumerator
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.wai-app-static
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.blaze-builder
              hsPkgs.enumerator
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.text
              hsPkgs.file-embed
            ];
          };
        };
      };
    }