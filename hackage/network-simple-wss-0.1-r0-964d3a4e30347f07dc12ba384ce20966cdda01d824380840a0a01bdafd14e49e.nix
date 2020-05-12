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
      identifier = { name = "network-simple-wss"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple-wss";
      url = "";
      synopsis = "Simple interface to TLS secured WebSockets.";
      description = "Simple interface to TLS secured WebSockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."network-simple-tls" or (errorHandler.buildDepError "network-simple-tls"))
          (hsPkgs."network-simple-ws" or (errorHandler.buildDepError "network-simple-ws"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      };
    }