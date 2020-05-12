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
      specVersion = "1.8";
      identifier = { name = "clientsession"; version = "0.9.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "http://github.com/yesodweb/clientsession/tree/master";
      url = "";
      synopsis = "Securely store session data in a client-side cookie.";
      description = "Achieves security through AES-CTR encryption and\nSkein-MAC-512-256 authentication.  Uses Base64\nencoding to avoid any issues with characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."skein" or (errorHandler.buildDepError "skein"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."cprng-aes" or (errorHandler.buildDepError "cprng-aes"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          ];
        buildable = true;
        };
      exes = {
        "clientsession-generate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            ];
          buildable = true;
          };
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            ];
          buildable = true;
          };
        };
      };
    }