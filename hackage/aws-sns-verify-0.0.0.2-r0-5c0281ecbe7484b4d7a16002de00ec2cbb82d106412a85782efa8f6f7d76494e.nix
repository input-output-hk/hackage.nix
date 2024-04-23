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
      identifier = { name = "aws-sns-verify"; version = "0.0.0.2"; };
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
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
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
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          ];
          buildable = true;
        };
      };
    };
  }