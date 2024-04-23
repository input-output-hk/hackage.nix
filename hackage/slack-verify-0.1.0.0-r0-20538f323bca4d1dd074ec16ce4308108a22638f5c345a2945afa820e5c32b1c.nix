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
      specVersion = "1.12";
      identifier = { name = "slack-verify"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Kyung Mo Kweon";
      maintainer = "kkweon@gmaill.com";
      author = "Kyung Mo Kweon";
      homepage = "https://github.com/kkweon/slack-verify-haskell#readme";
      url = "";
      synopsis = "Slack API Request Verification HMAC";
      description = "Please see the README on GitHub at <https://github.com/kkweon/slack-verify-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
        ];
        buildable = true;
      };
      tests = {
        "slack-verify-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."slack-verify" or (errorHandler.buildDepError "slack-verify"))
          ];
          buildable = true;
        };
      };
    };
  }