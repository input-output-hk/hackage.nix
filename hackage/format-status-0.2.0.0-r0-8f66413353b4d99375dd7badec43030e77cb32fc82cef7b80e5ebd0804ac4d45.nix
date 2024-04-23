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
      identifier = { name = "format-status"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "George Rogers";
      homepage = "";
      url = "";
      synopsis = "A utility for writing the date to dzen2.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "format-status" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."data-concurrent-queue" or (errorHandler.buildDepError "data-concurrent-queue"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          buildable = true;
        };
      };
    };
  }