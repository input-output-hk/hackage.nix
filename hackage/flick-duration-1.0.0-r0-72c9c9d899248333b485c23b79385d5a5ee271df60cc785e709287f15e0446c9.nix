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
      identifier = { name = "flick-duration"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) Christopher Lord (Pliosoft), All Rights Reserved";
      maintainer = "christopher@pliosoft.com";
      author = "Christopher Lord";
      homepage = "https://github.com/pliosoft/flick-duration#readme";
      url = "";
      synopsis = "work with durations of time using the Flick as the smallest unit";
      description = "Please see the README on GitHub at <https://github.com/pliosoft/flick-duration#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
        ];
        buildable = true;
      };
      tests = {
        "flick-duration-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."flick-duration" or (errorHandler.buildDepError "flick-duration"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }