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
      identifier = { name = "nettle-frp"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy, Daniel Rozycki, Kwabene Antwi-Boasiako";
      homepage = "";
      url = "";
      synopsis = "FRP for controlling networks of OpenFlow switches.";
      description = "This module provides an FRP-based framework for controlling OpenFlow switches.\nThe library is under active development and should still be considered experimental.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nettle-openflow" or (errorHandler.buildDepError "nettle-openflow"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-data" or (errorHandler.buildDepError "network-data"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }