{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "STLinkUSB";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "2015-2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "STLink USB interface in Haskell";
      description = "This package contains a Haskell driver for ST-Link USB dongles.\nMy use case for this driver is the STM32-Zombie library.\nThe STM32-Zombie library turns a STM32 micro-controller\ninto a powerful Haskell-hackable hardware interface.\nThe library is a based on information from the openocd library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.usb)
          (hsPkgs.vector)
          (hsPkgs.binary)
          (hsPkgs.transformers)
        ];
      };
    };
  }