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
      identifier = { name = "rasa-ext-files"; version = "0.1.4"; };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext for filesystem actions";
      description = "Rasa Ext for filesystem actions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rasa" or (errorHandler.buildDepError "rasa"))
          (hsPkgs."rasa-ext-views" or (errorHandler.buildDepError "rasa-ext-views"))
          (hsPkgs."rasa-ext-cmd" or (errorHandler.buildDepError "rasa-ext-cmd"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
        ];
        buildable = true;
      };
    };
  }