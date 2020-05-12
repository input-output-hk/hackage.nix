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
      specVersion = "2.4";
      identifier = { name = "lambda-options"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Eding";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/lambda-options";
      url = "";
      synopsis = "Declarative command-line parser using type-driven pattern matching.";
      description = "This is a declarative command-line parser that uses type-driven pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."funspection" or (errorHandler.buildDepError "funspection"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."read-bounded" or (errorHandler.buildDepError "read-bounded"))
          ];
        buildable = true;
        };
      };
    }