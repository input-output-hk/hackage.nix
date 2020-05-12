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
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "network-simple-tls"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple-tls";
      url = "";
      synopsis = "Simple interface to TLS secured network sockets.";
      description = "Simple interface to TLS secured network sockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."crypto-random-api" or (errorHandler.buildDepError "crypto-random-api"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          ];
        buildable = true;
        };
      exes = {
        "network-simple-tls-example-https-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network-simple-tls" or (errorHandler.buildDepError "network-simple-tls"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "network-simple-tls-example-echo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network-simple-tls" or (errorHandler.buildDepError "network-simple-tls"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }