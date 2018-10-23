{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "usb";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009–2010 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Communicate with USB devices";
      description = "This library enables you to communicate with USB devices from\nuserspace. It is implemented as a high-level wrapper around\nbindings-libusb which is a low-level binding to the C library:\nlibusb-1.*.";
      buildType = "Simple";
    };
    components = {
      "usb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bindings-libusb)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.iteratee)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
    };
  }