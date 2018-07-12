{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "network-websocket";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Michael Melanson, 2010";
        maintainer = "Michael Melanson <michael@michaelmelanson.net>";
        author = "Michael Melanson <michael@michaelmelanson.net>";
        homepage = "http://github.com/michaelmelanson/network-websocket";
        url = "";
        synopsis = "WebSocket library";
        description = "A library for creating Websocket servers";
        buildType = "Simple";
      };
      components = {
        "network-websocket" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.network
            hsPkgs.webserver
          ];
        };
        exes = {
          "websocket-echo" = {};
        };
      };
    }