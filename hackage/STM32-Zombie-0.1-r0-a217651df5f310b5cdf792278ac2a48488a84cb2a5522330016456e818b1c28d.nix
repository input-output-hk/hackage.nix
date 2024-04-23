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
      specVersion = "1.24";
      identifier = { name = "STM32-Zombie"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "control a STM32F103 microcontroller from Haskell";
      description = "This library turns a STM32F103 board into a powerful Haskell hackable\nIO adapter. Features are GPIO pins, serial ports, SPI ports, DMA\nADC, timers,..\nThe library is modeled after the STMicroelectronics\nSTM32F10x Firmware Library.\nThe library has a rather low-level interface, which\nallows one to control many details of the micro controller hardware\nand can also be used to build higher level abstraction.\nSee App.Blink in the App-folder and the github page";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."STM32F103xx-SVD" or (errorHandler.buildDepError "STM32F103xx-SVD"))
          (hsPkgs."STLinkUSB" or (errorHandler.buildDepError "STLinkUSB"))
        ];
        buildable = true;
      };
    };
  }