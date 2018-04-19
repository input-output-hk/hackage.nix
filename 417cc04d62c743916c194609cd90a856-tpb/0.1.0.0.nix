{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tpb";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Jacob Thomas Errington 2017";
        maintainer = "hackage@mail.jerrington.me";
        author = "Jacob Thomas Errington";
        homepage = "";
        url = "";
        synopsis = "Applications for interacting with the Pushbullet API";
        description = "This package provides two programs, tpb and pb-notify, for interacting with\nthe Pushbullet API. The former is primarily used for sending SMS whereas the\nlatter is used for showing desktop notifications when SMS are received.";
        buildType = "Simple";
      };
      components = {
        exes = {
          tpb = {
            depends  = [
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
              hsPkgs.pushbullet-types
              hsPkgs.text
              hsPkgs.time
              hsPkgs.servant
              hsPkgs.servant-client
              hsPkgs.servant-pushbullet-client
            ];
          };
          pb-notify = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.libnotify
              hsPkgs.pushbullet-types
              hsPkgs.text
              hsPkgs.time
              hsPkgs.websockets
              hsPkgs.wuss
            ];
          };
        };
      };
    }