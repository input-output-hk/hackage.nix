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
      identifier = { name = "tokenify"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "aksthomsen@gmail.com";
      author = "Angus Thomsen";
      homepage = "https://github.com/AKST/tokenify";
      url = "";
      synopsis = "A regex based LR tokenizer";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }