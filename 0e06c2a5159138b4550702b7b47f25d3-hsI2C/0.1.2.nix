{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsI2C";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Marc Fontaine";
      maintainer = "Marc.Fontaine@gmx.de";
      author = "Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "I2C access for Haskell and Linux";
      description = "This library provides a Haskell interface to I2C on Linux via  /dev/i2c. It wrapps the libi2c c-library that is included as c-bits. Beware that poking the internal I2C buses of your PC or laptop may cause hardware damage. I test and use this library with an external i2c_tiny_usb adapter. (Note that the i2c_tiny_usb kernel driver is broken in 4.9 and 4.11. But it works with this patch: https:\\/\\/patchwork.kernel.org\\/patch\\/9711919\\/)";
      buildType = "Simple";
    };
    components = {
      "hsI2C" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
        ];
      };
    };
  }