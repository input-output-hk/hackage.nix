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
      identifier = { name = "LambdaDB"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 Junyoung Clare Jang";
      maintainer = "jjc9310@gmail.com";
      author = "Junyoung Clare Jang";
      homepage = "https://github.com/ailrun/LambdaDB/blob/master/README.md";
      url = "";
      synopsis = "On-memory Database using Lambda Function environment.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "LambdaDB-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."LambdaDB" or (errorHandler.buildDepError "LambdaDB"))
            ];
          buildable = true;
          };
        };
      tests = {
        "LambdaDB-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."LambdaDB" or (errorHandler.buildDepError "LambdaDB"))
            ];
          buildable = true;
          };
        };
      };
    }