{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wiringPi"; version = "1.0.1"; };
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
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = (pkgs.lib).optional (!system.isX86_64) (pkgs."wiringPi" or (errorHandler.sysDepError "wiringPi"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "pwm-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "isr-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "output-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "write-byte-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "turn-off" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "wiringPi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "wpi-fishdish" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wiringPi" or (errorHandler.buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        };
      };
    }