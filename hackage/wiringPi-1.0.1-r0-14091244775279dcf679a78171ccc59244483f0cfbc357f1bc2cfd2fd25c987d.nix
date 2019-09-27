let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = (pkgs.lib).optional (!system.isX86_64) (pkgs."wiringPi" or (sysDepError "wiringPi"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "pwm-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "isr-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "output-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "write-byte-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "turn-off" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "wiringPi-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        "wpi-fishdish" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wiringPi" or (buildDepError "wiringPi"))
            ];
          buildable = true;
          };
        };
      };
    }