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
      specVersion = "2.0";
      identifier = { name = "skylighting-modding"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/pandoc-highlighting-ext";
      url = "";
      synopsis = "Utilities for modifying Skylighting syntaxes";
      description = "Functions for making alterations to @skylighting-core@ values ('SyntaxMap',\n'Syntax', 'Context', 'Rule', etc.).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }