{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "STM32-Zombie"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "control a STM32F103 microcontroller";
      description = "This library turns a STM32F103 board into a powerful Haskell hackable\nIO adapter. Features are GPIO pins, serial ports, SPI ports, DMA\nADC, timers,..\nThe library is modeled after the STMicroelectronics\nSTM32F10x Firmware Library.\nThe library has a rather low-level interface, which\nallows one to control many details of the micro controller hardware\nand can also be used to build higher level abstraction.\nSee the \"App.Blink\" module\nand the [github page](https://github.com/MarcFontaine/stm32hs)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."STM32F103xx-SVD" or ((hsPkgs.pkgs-errors).buildDepError "STM32F103xx-SVD"))
          (hsPkgs."STLinkUSB" or ((hsPkgs.pkgs-errors).buildDepError "STLinkUSB"))
          ];
        buildable = true;
        };
      };
    }