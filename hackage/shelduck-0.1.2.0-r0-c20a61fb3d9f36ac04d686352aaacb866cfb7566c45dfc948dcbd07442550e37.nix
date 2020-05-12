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
      identifier = { name = "shelduck"; version = "0.1.2.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "";
      url = "";
      synopsis = "Test webhooks locally";
      description = "Opinionated tool for QAing webhooks on remote services using ngrok";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."hastache" or (errorHandler.buildDepError "hastache"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          ];
        buildable = true;
        };
      exes = {
        "shelduck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shelduck" or (errorHandler.buildDepError "shelduck"))
            (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."hastache" or (errorHandler.buildDepError "hastache"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."shelduck" or (errorHandler.buildDepError "shelduck"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            ];
          buildable = true;
          };
        };
      };
    }