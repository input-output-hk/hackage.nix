{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      usb = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blink1";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dylan@dylex.net";
        author = "Dylan Simon";
        homepage = "";
        url = "";
        synopsis = "Control library for blink(1) LED from ThingM";
        description = "Provides an interface to the ThingM blink(1) LED <http://thingm.com/products/blink-1.html> similar to (but not dependent on) <http://github.com/todbot/blink1> via Linux hidraw or the libusb-based usb package.";
        buildType = "Simple";
      };
      components = {
        blink1 = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optional system.isLinux hsPkgs.unix) ++ pkgs.lib.optionals _flags.usb [
            hsPkgs.usb
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        exes = {
          blink1 = {
            depends  = ([
              hsPkgs.base
              hsPkgs.blink1
            ] ++ pkgs.lib.optional system.isLinux hsPkgs.unix) ++ pkgs.lib.optionals _flags.usb [
              hsPkgs.usb
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.bytestring
            ];
          };
        };
      };
    }