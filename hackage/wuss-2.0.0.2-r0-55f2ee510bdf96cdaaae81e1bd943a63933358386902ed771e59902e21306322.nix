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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "wuss"; version = "2.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Secure WebSocket (WSS) clients";
      description = "Wuss is a library that lets you easily create secure WebSocket clients over\nthe WSS protocol. It is a small addition to\n<https://hackage.haskell.org/package/websockets the websockets package> and\nis adapted from existing solutions by\n<https://gist.github.com/jaspervdj/7198388 @jaspervdj>,\n<https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @mpickering>, and\n<https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @elfenlaid>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ];
        buildable = true;
      };
    };
  }