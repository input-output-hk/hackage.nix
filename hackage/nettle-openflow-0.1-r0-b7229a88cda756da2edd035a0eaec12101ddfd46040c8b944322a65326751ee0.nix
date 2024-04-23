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
      identifier = { name = "nettle-openflow"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy, Ashish Agarwal, Sam Burnett, John Launchbury";
      homepage = "";
      url = "";
      synopsis = "High level configuration and control of computer networks.";
      description = "This module provides a logical representation of the messages of the OpenFlow\nprotocol (<http://www.openflowswitch.org>) and implements the binary formats\nfor these messages. This module also provides TCP servers that accept connections\nfrom switches and provide methods to receive messages from and send messages to\nconnected switches.\nThe library is under active development and should still be considered experimental.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
        ];
        buildable = true;
      };
    };
  }