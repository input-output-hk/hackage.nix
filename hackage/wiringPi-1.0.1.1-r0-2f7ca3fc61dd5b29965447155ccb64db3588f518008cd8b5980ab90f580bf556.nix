{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wiringPi"; version = "1.0.1.1"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = (pkgs.lib).optional (!system.isX86_64) (pkgs."wiringPi" or ((hsPkgs.pkgs-errors).sysDepError "wiringPi"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "pwm-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "isr-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "output-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "write-byte-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "turn-off" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "wiringPi-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "wpi-fishdish" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wiringPi" or ((hsPkgs.pkgs-errors).buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        };
      };
    }