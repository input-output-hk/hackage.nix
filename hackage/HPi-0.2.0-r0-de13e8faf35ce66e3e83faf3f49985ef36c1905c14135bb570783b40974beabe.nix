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
      specVersion = "1.8";
      identifier = { name = "HPi"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wjw.hillen@gmail.com";
      author = "Wander Hillen\t";
      homepage = "https://github.com/WJWH/HPi";
      url = "";
      synopsis = "GPIO and I2C functions for the Raspberry Pi.";
      description = "This package is a FFI wrapper around the bcm2835 library by Mike McCauley, it also includes a few utility functions for easier use of the imported functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }