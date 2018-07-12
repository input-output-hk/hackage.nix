{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hArduino";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok, 2013";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://leventerkok.github.com/hArduino";
        url = "";
        synopsis = "Control your Arduino board from Haskell.";
        description = "hArduino allows Haskell programs to control Arduino boards (<http://www.arduino.cc>)\nand peripherals, using the Firmata protocol (<http://firmata.org>).\n\nFor details, see: <http://leventerkok.github.com/hArduino>.";
        buildType = "Simple";
      };
      components = {
        "hArduino" = {
          depends  = [
            hsPkgs.base
            hsPkgs.serialport
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.time
          ];
        };
      };
    }