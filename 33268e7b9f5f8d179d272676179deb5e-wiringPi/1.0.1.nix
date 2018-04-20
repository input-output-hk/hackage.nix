{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wiringPi";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "© Patrick Pelletier, 2017";
        maintainer = "code@funwithsoftware.org";
        author = "Patrick Pelletier";
        homepage = "https://github.com/ppelleti/hs-wiringPi";
        url = "";
        synopsis = "Access GPIO pins on Raspberry Pi via wiringPi library";
        description = "This is a Haskell binding to the <http://wiringpi.com/ wiringPi library>,\nwhich allows you to interface with the GPIO pins on the\n<https://www.raspberrypi.org/ Raspberry Pi>.\nUnlike some other solutions for using the Raspberry Pi's GPIO pins,\nwiringPi provides access to more advanced features, such as\nenabling the internal pull-up or pull-down resistors.";
        buildType = "Simple";
      };
      components = {
        wiringPi = {
          depends  = [ hsPkgs.base ];
          libs = pkgs.lib.optional (!system.isX86_64) pkgs.wiringPi;
        };
        exes = {
          pwm-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
          isr-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
          output-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
          write-byte-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
          turn-off = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
          wiringPi-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
          wpi-fishdish = {
            depends  = [
              hsPkgs.base
              hsPkgs.wiringPi
            ];
          };
        };
      };
    }