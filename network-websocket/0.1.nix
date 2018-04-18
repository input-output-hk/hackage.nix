{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "network-websocket";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Melanson <michael@michaelmelanson.net>";
        author = "Michael Melanson <michael@michaelmelanson.net>";
        homepage = "";
        url = "";
        synopsis = "WebSocket library";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-websocket = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.haskell98
          ];
        };
      };
    }