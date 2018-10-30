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
      specVersion = "1.10";
      identifier = {
        name = "wiringPi";
        version = "0.1.0.0";
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
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."wiringPi") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "pwm-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
        "output-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
        "write-byte-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
        "info-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
        "broadcom-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
        "turn-off" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
        "wiringPi-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wiringPi)
          ];
        };
      };
    };
  }