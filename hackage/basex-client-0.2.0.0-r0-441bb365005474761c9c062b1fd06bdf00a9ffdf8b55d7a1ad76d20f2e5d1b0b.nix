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
      identifier = { name = "basex-client"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "matthijssteen1990@gmail.com";
      author = "Matthijs Steen";
      homepage = "";
      url = "";
      synopsis = "A BaseX client for Haskell";
      description = "A BaseX client library for Haskell that connects to the BaseX server using a socket. BaseX is a light-weight, high-performance and scalable XML Database written in Java.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }