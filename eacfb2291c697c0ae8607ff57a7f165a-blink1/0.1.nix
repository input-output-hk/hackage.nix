{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blink1";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dylan@dylex.net";
        author = "Dylan Simon";
        homepage = "";
        url = "";
        synopsis = "Control library for blink(1) LED from ThingM";
        description = "Provides an interface to the ThingM blink(1) LED <http://thingm.com/products/blink-1.html> similar to (but not dependent on) <http://github.com/todbot/blink1>.  Currently only a partially-functional Linux HIDRAW-based interface is defined, but a libusb-based one is planned.";
        buildType = "Simple";
      };
      components = {
        "blink1" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals system.isLinux [
            hsPkgs.unix
            hsPkgs.ioctl
          ];
        };
      };
    }