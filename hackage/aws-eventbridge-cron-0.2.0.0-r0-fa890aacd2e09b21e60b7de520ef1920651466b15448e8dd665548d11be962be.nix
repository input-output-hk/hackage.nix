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
      specVersion = "3.0";
      identifier = { name = "aws-eventbridge-cron"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kushagra Gupta <khushiitrans@gmail.com>";
      author = "Kushagra Gupta";
      homepage = "https://github.com/kushagarr/aws-eventbridge-cron#readme";
      url = "";
      synopsis = "AWS EventBridge cron, rate, and one-time parser with scheduler";
      description = "Parse AWS EventBridge cron, rate, and one-time expressions and compute\nthe next run times from a base timestamp. The package validates AWS-specific\nextensions such as \"?\" day wildcards, nth weekdays (#), and last-weekday (L,\nLW) modifiers so you can rely on the same behaviour as AWS Scheduler cron\nschedules.\n.\nThe README includes usage examples and notes on the guarantees provided by\nthe evaluator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
          (hsPkgs."tzdata" or (errorHandler.buildDepError "tzdata"))
        ];
        buildable = true;
      };
      tests = {
        "aws-eventbridge-cron-test" = {
          depends = [
            (hsPkgs."aws-eventbridge-cron" or (errorHandler.buildDepError "aws-eventbridge-cron"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            (hsPkgs."tzdata" or (errorHandler.buildDepError "tzdata"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "aws-eventbridge-cron-bench" = {
          depends = [
            (hsPkgs."aws-eventbridge-cron" or (errorHandler.buildDepError "aws-eventbridge-cron"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
          ];
          buildable = true;
        };
      };
    };
  }