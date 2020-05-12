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
      identifier = { name = "paranoia"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Dmitry \"troydm\" Geurkov";
      maintainer = "d.geurkov@gmail.com";
      author = "Dmitry \"troydm\" Geurkov";
      homepage = "https://github.com/troydm/paranoia#readme";
      url = "";
      synopsis = "http proxy server";
      description = "HTTP Proxy Server for stalking clients";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "paranoia" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."paranoia" or (errorHandler.buildDepError "paranoia"))
            (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "paranoia-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."paranoia" or (errorHandler.buildDepError "paranoia"))
            ];
          buildable = true;
          };
        };
      };
    }