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
      specVersion = "2.2";
      identifier = { name = "hslogger-colorfmt"; version = "1.0.0"; };
      license = "ISC";
      copyright = "2026 Dino Morelli";
      maintainer = "dino@ui3.info";
      author = "Dino Morelli";
      homepage = "";
      url = "";
      synopsis = "Custom hslogger formatters implementing color output";
      description = "This library adds some custom log formatters implementing color output. We\nhave also added code to pad the Priority strings in log messages if desired.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "hslogger-colorfmt-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hslogger-colorfmt" or (errorHandler.buildDepError "hslogger-colorfmt"))
          ];
          buildable = true;
        };
      };
    };
  }