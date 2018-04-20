{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "fdo-notify";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "max.rabkin@gmail.com";
        author = "Max Rabkin";
        homepage = "http://bitbucket.org/taejo/fdo-notify/";
        url = "";
        synopsis = "Desktop Notifications client";
        description = "A library for issuing notifications using FreeDesktop.org's Desktop\nNotifications protcol. This protocol is supported by services such\nas Ubuntu's NotifyOSD.";
        buildType = "Simple";
      };
      components = {
        fdo-notify = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.dbus
          ];
        };
      };
    }