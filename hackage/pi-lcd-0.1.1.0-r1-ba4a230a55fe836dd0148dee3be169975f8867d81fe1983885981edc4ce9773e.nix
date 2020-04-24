{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pi-lcd"; version = "0.1.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "pi-lcd-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pi-lcd" or ((hsPkgs.pkgs-errors).buildDepError "pi-lcd"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !system.isLinux then false else true;
          };
        "pi-lcd-custom" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pi-lcd" or ((hsPkgs.pkgs-errors).buildDepError "pi-lcd"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !system.isLinux then false else true;
          };
        "pi-lcd-ui" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pi-lcd" or ((hsPkgs.pkgs-errors).buildDepError "pi-lcd"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !system.isLinux then false else true;
          };
        "pi-lcd-test-rom" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pi-lcd" or ((hsPkgs.pkgs-errors).buildDepError "pi-lcd"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !system.isLinux then false else true;
          };
        };
      };
    }