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
      identifier = { name = "rasa-example-config"; version = "0.1.4"; };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Example user config for Rasa";
      description = "Example user config for Rasa";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rasa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rasa" or (errorHandler.buildDepError "rasa"))
            (hsPkgs."rasa-ext-views" or (errorHandler.buildDepError "rasa-ext-views"))
            (hsPkgs."rasa-ext-vim" or (errorHandler.buildDepError "rasa-ext-vim"))
            (hsPkgs."rasa-ext-cursors" or (errorHandler.buildDepError "rasa-ext-cursors"))
            (hsPkgs."rasa-ext-logger" or (errorHandler.buildDepError "rasa-ext-logger"))
            (hsPkgs."rasa-ext-files" or (errorHandler.buildDepError "rasa-ext-files"))
            (hsPkgs."rasa-ext-slate" or (errorHandler.buildDepError "rasa-ext-slate"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }