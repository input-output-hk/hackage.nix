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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hoauth"; version = "0.0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Diego Souza <dsouza@bitforest.org>";
      author = "Diego Souza";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of OAuth 1.0 protocol.";
      description = "This library implements both PLAINTEXT and HMAC-SHA1 signatures\nas defined in the specification 1.0. Currently it supports only\n/consumer/ related functions, but there are plans to add support\n/service providers/ as well.\nMore info at: <http://oauth.net/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "test_hoauth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }