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
      specVersion = "1.12";
      identifier = { name = "i2c-bus"; version = "0.1.0"; };
      license = "MIT";
      copyright = "karamellpelle@hotmail.com";
      maintainer = "karamellpelle@hotmail.com";
      author = "karamellpelle@hotmail.com";
      homepage = "https://github.com/karamellpelle/i2c-bus";
      url = "";
      synopsis = "Typed I2C communication";
      description = "Library for I2C communication with utilities for working with registers, etc.\n\nJust import the module \"I2C\", and you will typically get everything you need.\n\n== Features\n* Connections to chips on I2C buses.\n* An exception type 'I2CErr'\n* A module \"I2C.Raw\" to perform direct write and read using 'Storable' types.\n* A module \"I2C.Register\" to work with chips that use registers.\n* Types for binary serialization between host architecture and chip hardware.\n* Handy utilities through Template Haskell to define chips, registers and\n(sub)fields of registers.\n* Settings to control the code generation by Template Haskell.\n* An API specification for backend implementations. Currently, only a\nLinux backend is implemented.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      tests = {
        "ssd1306" = {
          depends = [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."i2c-bus" or (errorHandler.buildDepError "i2c-bus"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }