{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pia-forward";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright 2015 Echo Nolan";
        maintainer = "echo@echonolan.net";
        author = "Echo Nolan";
        homepage = "https://github.com/enolan/pia-forward";
        url = "";
        synopsis = "Set up port forwarding with the Private Internet Access\nVPN service.";
        description = "Sets up and maintains a forwarded port. See https://www.privateinternetaccess.com/forum/discussion/180/port-forwarding-without-the-application-advanced-users.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pia-forward = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.network-info
              hsPkgs.process
              hsPkgs.random
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.time
              hsPkgs.xdg-basedir
            ];
          };
        };
      };
    }