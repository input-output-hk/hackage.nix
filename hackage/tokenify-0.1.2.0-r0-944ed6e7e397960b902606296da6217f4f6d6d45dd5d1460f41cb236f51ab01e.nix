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
      identifier = { name = "tokenify"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "aksthomsen@gmail.com";
      author = "Angus Thomsen";
      homepage = "https://github.com/AKST/tokenify";
      url = "";
      synopsis = "A regex lexer";
      description = "A lexer used to split text into tokens";
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