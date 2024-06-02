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
      specVersion = "1.12";
      identifier = { name = "symparsec"; version = "1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/symparsec#readme";
      url = "";
      synopsis = "Type level string parser combinators";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
          (hsPkgs."singleraeh" or (errorHandler.buildDepError "singleraeh"))
          (hsPkgs."type-level-show" or (errorHandler.buildDepError "type-level-show"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
            (hsPkgs."singleraeh" or (errorHandler.buildDepError "singleraeh"))
            (hsPkgs."symparsec" or (errorHandler.buildDepError "symparsec"))
            (hsPkgs."type-level-show" or (errorHandler.buildDepError "type-level-show"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
          ];
          buildable = true;
        };
      };
    };
  }