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
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-slack-verify";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Copyright (c) 2018 Brandon Hamilton";
      maintainer = "brandon.hamilton@gmail.com";
      author = "Brandon Hamilton";
      homepage = "https://github.com/brandonhamilton/wai-middleware-slack-verify#readme";
      url = "";
      synopsis = "WAI Slack request verification middleware";
      description = "Middleware for WAI that uses signed secrets to verify Slack requests.\\n\nSee <https://api.slack.com/docs/verifying-requests-from-slack>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "bot-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            ] ++ (pkgs.lib).optionals (flags.build-example) [
            (hsPkgs."linklater" or (errorHandler.buildDepError "linklater"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai-middleware-slack-verify" or (errorHandler.buildDepError "wai-middleware-slack-verify"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if flags.build-example then true else false;
          };
        };
      tests = {
        "wai-middleware-slack-verify-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-slack-verify" or (errorHandler.buildDepError "wai-middleware-slack-verify"))
            ];
          buildable = true;
          };
        };
      };
    }