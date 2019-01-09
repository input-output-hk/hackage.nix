{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cron"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2012 Michael Xavier";
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
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }