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
      specVersion = "3.0";
      identifier = { name = "fuyu-gpio-direct"; version = "0.1.0.0"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "sebastian11medrano@gmail.com";
      author = "BassGT";
      homepage = "";
      url = "";
      synopsis = "Direct Haskell bindings for Linux libgpiod v2";
      description = "Mid-level and low-level Haskell bindings for interacting with Linux GPIO\ncharacter devices using libgpiod v2. Provides type-safe abstractions for\nline requests, chip management, edge event monitoring, and settings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [ (pkgs."gpiod" or (errorHandler.sysDepError "gpiod")) ];
        buildable = true;
      };
    };
  }