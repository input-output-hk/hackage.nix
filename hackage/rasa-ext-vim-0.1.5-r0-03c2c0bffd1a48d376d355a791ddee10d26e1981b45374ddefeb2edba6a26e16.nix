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
      identifier = { name = "rasa-ext-vim"; version = "0.1.5"; };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext for vim bindings";
      description = "Rasa Ext for vim bindings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rasa" or (errorHandler.buildDepError "rasa"))
          (hsPkgs."rasa-ext-files" or (errorHandler.buildDepError "rasa-ext-files"))
          (hsPkgs."rasa-ext-views" or (errorHandler.buildDepError "rasa-ext-views"))
          (hsPkgs."rasa-ext-cursors" or (errorHandler.buildDepError "rasa-ext-cursors"))
          (hsPkgs."rasa-ext-status-bar" or (errorHandler.buildDepError "rasa-ext-status-bar"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          (hsPkgs."text-lens" or (errorHandler.buildDepError "text-lens"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "rasa-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rasa-ext-vim" or (errorHandler.buildDepError "rasa-ext-vim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }