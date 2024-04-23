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
    flags = { build-test-suite = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "time-w3c"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho AT cielonegro DOT org>";
      author = "PHO <pho AT cielonegro DOT org>";
      homepage = "http://cielonegro.org/W3CDateTime.html";
      url = "";
      synopsis = "Parse, format and convert W3C Date and Time";
      description = "This package provides functionalities to parse and format W3C\nDate and Time. The package can also be used to convert it\nfrom/to 'Data.Time.Calendar.Day' and\n'Data.Time.LocalTime.ZonedTime'.\nSee: <http://www.w3.org/TR/NOTE-datetime>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "W3CDateTimeUnitTest" = {
          depends = pkgs.lib.optional (flags.build-test-suite) (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"));
          buildable = if flags.build-test-suite then true else false;
        };
      };
    };
  }