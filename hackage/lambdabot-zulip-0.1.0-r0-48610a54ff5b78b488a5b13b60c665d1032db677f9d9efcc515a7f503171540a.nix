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
      specVersion = "1.8";
      identifier = { name = "lambdabot-zulip"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2017 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/lambdabot-zulip";
      url = "";
      synopsis = "Lambdabot for Zulip Chat";
      description = "Integrates lambdabot with Zulip Chat.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."hzulip" or (errorHandler.buildDepError "hzulip"))
          (hsPkgs."mueval" or (errorHandler.buildDepError "mueval"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."say" or (errorHandler.buildDepError "say"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "lamdabot-zulip-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdabot-zulip" or (errorHandler.buildDepError "lambdabot-zulip"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdabot-zulip" or (errorHandler.buildDepError "lambdabot-zulip"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }