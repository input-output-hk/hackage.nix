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
      identifier = { name = "alarmclock"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Turner 2014";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://bitbucket.org/davecturner/alarmclock";
      url = "";
      synopsis = "Wake up and perform an action at a certain time.";
      description = "Wake up and perform an action at a certain time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          ];
        buildable = true;
        };
      };
    }