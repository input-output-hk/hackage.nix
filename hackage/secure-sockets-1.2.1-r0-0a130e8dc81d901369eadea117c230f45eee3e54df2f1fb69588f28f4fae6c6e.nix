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
      specVersion = "1.6";
      identifier = { name = "secure-sockets"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "dave@natulte.net";
      author = "David Anderson";
      homepage = "http://code.google.com/p/secure-hs/";
      url = "";
      synopsis = "Secure point-to-point connectivity library";
      description = "This library simplifies the task of securely connecting two\nservers to each other, with strong authentication and\nencryption on the wire.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }