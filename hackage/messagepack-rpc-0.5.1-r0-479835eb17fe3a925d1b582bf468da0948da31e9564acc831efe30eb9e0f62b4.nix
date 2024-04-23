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
      specVersion = "1.10";
      identifier = { name = "messagepack-rpc"; version = "0.5.1"; };
      license = "MIT";
      copyright = "(c) 2014 Rodrigo Setti";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "http://github.com/rodrigosetti/messagepack-rpc";
      url = "https://github.com/rodrigosetti/messagepack-rpc/archive/master.zip";
      synopsis = "Message Pack RPC over TCP";
      description = "Message Pack RPC over TCP";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."messagepack" or (errorHandler.buildDepError "messagepack"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
        ];
        buildable = true;
      };
    };
  }