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
      identifier = { name = "brick-calendar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "leo@ldgrp.me";
      author = "Leo Orpilla III";
      homepage = "https://github.com/ldgrp/brick-calendar";
      url = "";
      synopsis = "Calendar widget for the Brick TUI library";
      description = "A library providing a month calendar widget for Brick-based terminal user interfaces.\nSee\n* <https://github.com/ldgrp/brick-calendar/tree/main/README.md the README file>\n* <https://github.com/ldgrp/brick-calendar/tree/main/programs Demo programs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
        ];
        buildable = true;
      };
      exes = {
        "calendar-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick-calendar" or (errorHandler.buildDepError "brick-calendar"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
        "simple-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick-calendar" or (errorHandler.buildDepError "brick-calendar"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
      };
      tests = {
        "brick-calendar-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick-calendar" or (errorHandler.buildDepError "brick-calendar"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }