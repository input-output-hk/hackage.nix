{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { usb = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "blink1";
        version = "0.2";
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
      "library" = {
        depends = ([
          (hsPkgs.base)
        ] ++ pkgs.lib.optionals (system.isLinux) [
          (hsPkgs.unix)
          (hsPkgs.ioctl)
        ]) ++ pkgs.lib.optionals (flags.usb) [
          (hsPkgs.usb)
          (hsPkgs.bindings-libusb)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }