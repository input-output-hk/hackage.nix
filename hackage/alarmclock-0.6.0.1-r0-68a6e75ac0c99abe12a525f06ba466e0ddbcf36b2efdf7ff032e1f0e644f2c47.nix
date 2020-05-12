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
      identifier = { name = "alarmclock"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014-2018 David Turner";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://bitbucket.org/davecturner/alarmclock";
      url = "";
      synopsis = "Wake up and perform an action at a certain time.";
      description = "Please see the README on Bitbucket at <https://bitbucket.org/davecturner/alarmclock#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          ];
        buildable = true;
        };
      tests = {
        "alarmclock-test" = {
          depends = [
            (hsPkgs."alarmclock" or (errorHandler.buildDepError "alarmclock"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            ];
          buildable = true;
          };
        };
      };
    }