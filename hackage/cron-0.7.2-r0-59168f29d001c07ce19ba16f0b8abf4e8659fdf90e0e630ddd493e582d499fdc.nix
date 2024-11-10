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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cron"; version = "0.7.2"; };
      license = "MIT";
      copyright = "Copyright: (c) 2012-2014 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/cron";
      url = "";
      synopsis = "Cron datatypes and Attoparsec parser";
      description = "Cron data structure and Attoparsec parser. The idea is to embed it in larger\nsystems which want to roll their own scheduled tasks in a format that people\nare used to.\n'System.Cron' is where all the interesting datatypes live. You will also find\n'scheduleMatches', which you can use to compare a time against a\n'CronSchedule' to see if an action needs to be performed.  System.Cron.Parser\nis where you will find the parsers `cronSchedule`, `crontabEntry` and\n`cronTab`. To parse individual schedules up to full crontab files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cron" or (errorHandler.buildDepError "cron"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cron" or (errorHandler.buildDepError "cron"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }