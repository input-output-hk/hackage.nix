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
      specVersion = "1.2";
      identifier = { name = "pulse-simple"; version = "0.1.14"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xanxys@gmail.com";
      author = "Daiki Handa";
      homepage = "";
      url = "";
      synopsis = "binding to Simple API of pulseaudio";
      description = "Binding to simple version of client API for the pulseaudio soundserver.\nAlthough it does not provide advanced features and some not-so-adavanced features like\nvolume control, it should be enough for simple applications.\nConfirmed to work on linux(32 bit and 64 bit) with ghc 6.8, 6.10, 7.0.4.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [
          (pkgs."pulse-simple" or (errorHandler.sysDepError "pulse-simple"))
        ];
        buildable = true;
      };
    };
  }