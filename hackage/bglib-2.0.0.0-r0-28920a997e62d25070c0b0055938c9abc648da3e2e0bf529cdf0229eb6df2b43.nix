{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bglib"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "giganetom@gmail.com";
      author = "Tamas Fabian";
      homepage = "https://github.com/netom/bgapi#readme";
      url = "";
      synopsis = "Implementation of the BGAPI serial protocol";
      description = "This library implements Silicon Labs' (formerly BlueGiga)\nserial protocol to communicate with certain Bluetooth and\nWifi products such as the BLED112 USB dongle or the BLE112\nand BLE113 Bluetooth Low Energy modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.serialport)
          (hsPkgs.stm)
          ];
        };
      exes = {
        "bgapitest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bglib)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.serialport)
            (hsPkgs.stm)
            ];
          };
        };
      };
    }