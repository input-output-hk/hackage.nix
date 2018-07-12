{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tpb";
          version = "0.4.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Jacob Thomas Errington 2017";
        maintainer = "hackage@mail.jerrington.me";
        author = "Jacob Thomas Errington";
        homepage = "";
        url = "";
        synopsis = "Applications for interacting with the Pushbullet API";
        description = "This package provides two programs, tpb and pb-notify, for interacting with\nthe Pushbullet API. The former is primarily used for sending SMS whereas the\nlatter is used for showing desktop notifications when SMS are received.\ntpb additionally supports a number of additional management commands for\ncreating and deleting resources inside PushBullet.\npb-notify is responsible for integration with PushBullet's Universal\nCopy/Paste feature. It maintains an internal buffer that is kept in sync with\nPushBullet's clipboard. This buffer can be accessed via pb-notify's built-in\nHTTP server. A POST request to the /clip endpoint of the server will in turn\nsend the necessary request to PushBullet to set the clipboard of all\nconnected devices.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tpb" = {
            depends  = [
              hsPkgs.pushbullet-types
              hsPkgs.servant-pushbullet-client
              hsPkgs.aeson
              hsPkgs.ansi-wl-pprint
              hsPkgs.base
              hsPkgs.boxes
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.free
              hsPkgs.filepath
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.microlens
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.time
              hsPkgs.servant
              hsPkgs.servant-client
            ];
          };
          "pb-notify" = {
            depends  = [
              hsPkgs.pushbullet-types
              hsPkgs.servant-pushbullet-client
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.libnotify
              hsPkgs.servant-client
              hsPkgs.servant-server
              hsPkgs.text
              hsPkgs.time
              hsPkgs.websockets
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.wuss
            ];
          };
        };
      };
    }