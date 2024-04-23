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
      identifier = { name = "symbol-parser"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/symbol-parser#readme";
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
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
            (hsPkgs."symbol-parser" or (errorHandler.buildDepError "symbol-parser"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
          ];
          buildable = true;
        };
      };
    };
  }