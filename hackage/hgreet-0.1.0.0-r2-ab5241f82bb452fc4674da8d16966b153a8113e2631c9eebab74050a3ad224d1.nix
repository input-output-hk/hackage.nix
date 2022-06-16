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
      identifier = { name = "hgreet"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "Copyright (C) 2022 Hazel (Vawlpe)";
      maintainer = "vawlpe@gmail.com";
      author = "Vawlpe";
      homepage = "https://github.com/Vawlpe/hgreet";
      url = "";
      synopsis = "Haskell module to interact with the greetd daemon trough it's IPC protocol.";
      description = "This package provides a Haskell module to interact with the greetd daemon.\nIt is intended as a simple abstraction layer for the IPC protocol, and is NOT a greeter in and of itself.\nFor an example of a working greeter based on this, see @hgreet-example@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }