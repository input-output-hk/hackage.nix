{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { enumerator = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "usb";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
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
          (hsPkgs.bindings-libusb)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ] ++ pkgs.lib.optionals (flags.enumerator) [
          (hsPkgs.iteratee)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
    };
  }