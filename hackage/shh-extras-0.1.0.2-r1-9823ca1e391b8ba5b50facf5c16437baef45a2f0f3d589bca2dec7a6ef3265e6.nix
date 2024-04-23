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
      identifier = { name = "shh-extras"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, 2019 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Utility functions for using shh";
      description = "Provides useful functions for setting up Shh as an\ninteractive shell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shh" or (errorHandler.buildDepError "shh"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
        ];
        buildable = true;
      };
      tests = {
        "shh-extra-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }