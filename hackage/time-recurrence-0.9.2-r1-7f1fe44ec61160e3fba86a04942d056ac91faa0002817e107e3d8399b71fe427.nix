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
    flags = { test-suite = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "time-recurrence"; version = "0.9.2"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "hellertime@gmail.com";
      author = "Chris Heller";
      homepage = "http://github.com/hellertime/time-recurrence";
      url = "";
      synopsis = "Generate recurring dates.";
      description = "time-recurrence is a library for generating\nrecurring dates.\nIt is based on the iCalendar spec (RFC 5545).\nHowever it makes no attempt to strictly follow\nthe spec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test-time-recurrence" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
          buildable = true;
        };
      };
    };
  }