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
      identifier = { name = "pi-lcd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© Patrick Pelletier, 2017";
      maintainer = "code@funwithsoftware.org";
      author = "Patrick Pelletier";
      homepage = "https://github.com/ppelleti/pi-lcd";
      url = "";
      synopsis = "Control an Adafruit character LCD and keypad kit on a Raspberry Pi";
      description = "This package allows using an\n<https://www.adafruit.com/categories/808 Adafruit character LCD and keypad kit>\non a Raspberry Pi from Haskell.\nEverything you need to use one of these LCDs is exposed in the\n@System.Hardware.PiLcd@ module.  The submodules are only exposed\nbecause they might be useful to reuse for other types of hardware,\nsuch as if you are using an MCP23017 port expander or an HD44780\ndisplay controller in some other context.  But if you're using the\nAdafruit character LCD and keypad kit, all you need is\n@System.Hardware.PiLcd@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      exes = {
        "pi-lcd-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pi-lcd" or (buildDepError "pi-lcd"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "pi-lcd-custom" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pi-lcd" or (buildDepError "pi-lcd"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "pi-lcd-ui" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pi-lcd" or (buildDepError "pi-lcd"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "pi-lcd-test-rom" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pi-lcd" or (buildDepError "pi-lcd"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }