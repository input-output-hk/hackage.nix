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
      identifier = { name = "network-simple-tls"; version = "0.2.1"; };
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
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }