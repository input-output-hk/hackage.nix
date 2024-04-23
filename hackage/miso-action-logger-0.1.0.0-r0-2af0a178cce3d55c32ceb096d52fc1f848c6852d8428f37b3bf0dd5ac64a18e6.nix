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
      specVersion = "2.4";
      identifier = { name = "miso-action-logger"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Sviat Chumakov";
      maintainer = "svchumakov@gmail.com";
      author = "Sviat Chumakov";
      homepage = "https://github.com/Lermex/miso-action-logger";
      url = "";
      synopsis = "Miso state transition logger";
      description = "State transition logger for Miso heavily inspired by Redux-Logger.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
        ];
        buildable = true;
      };
    };
  }