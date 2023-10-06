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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "aws-sns-verify"; version = "0.0.0.3"; };
      license = "MIT";
      copyright = "2022 Freckle By Renaissance";
      maintainer = "engineering@freckle.com";
      author = "Freckle";
      homepage = "https://github.com/freckle/aws-sns-verify#readme";
      url = "";
      synopsis = "Parse and verify AWS SNS messages";
      description = "Please see the README on GitHub at <https://github.com/freckle/aws-sns-verify#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypton-x509" or (errorHandler.buildDepError "crypton-x509"))
          (hsPkgs."crypton-x509-validation" or (errorHandler.buildDepError "crypton-x509-validation"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "aws-sns-verify-test" = {
          depends = [
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."aws-sns-verify" or (errorHandler.buildDepError "aws-sns-verify"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crypton-x509-validation" or (errorHandler.buildDepError "crypton-x509-validation"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }