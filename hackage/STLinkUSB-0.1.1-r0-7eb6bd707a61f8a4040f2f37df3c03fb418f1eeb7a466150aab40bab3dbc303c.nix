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
      identifier = { name = "STLinkUSB"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "2015-2017 Marc Fontaine <Marc.Fontaine@gmx.de>               ";
      author = "2015-2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "STLink USB interface in Haskell";
      description = "This package contains a Haskell driver for ST-Link USB dongles.\nMy use case for this driver is the STM32-Zombie library.\nThe STM32-Zombie library turns a STM32 micro-controller\ninto a powerful Haskell-hackable hardware interface.\nThe library is a based on information from the openocd library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }