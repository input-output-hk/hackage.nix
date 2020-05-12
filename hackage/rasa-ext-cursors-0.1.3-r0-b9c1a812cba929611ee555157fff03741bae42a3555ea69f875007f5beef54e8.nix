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
      identifier = { name = "rasa-ext-cursors"; version = "0.1.3"; };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext adding cursor(s)";
      description = "Rasa Ext adding cursor(s)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rasa" or (errorHandler.buildDepError "rasa"))
          (hsPkgs."rasa-ext-style" or (errorHandler.buildDepError "rasa-ext-style"))
          (hsPkgs."text-lens" or (errorHandler.buildDepError "text-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }