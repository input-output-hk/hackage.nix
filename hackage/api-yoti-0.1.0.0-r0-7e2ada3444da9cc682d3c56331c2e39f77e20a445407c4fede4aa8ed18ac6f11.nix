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
      identifier = { name = "api-yoti"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Kelecorix Inc., Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak";
      homepage = "https://github.com/sigrlami/api-yoti#readme";
      url = "";
      synopsis = "Api bindings for Yoti services";
      description = "Api bindings for https://www.yoti.com/ digital identity service";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."crypto-simple" or (errorHandler.buildDepError "crypto-simple"))
          (hsPkgs."crypto-pubkey-openssh" or (errorHandler.buildDepError "crypto-pubkey-openssh"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "yoti-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }