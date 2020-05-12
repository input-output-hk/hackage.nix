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
    flags = { ci = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambda-calculus-interpreter";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2018 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/lambda-calculus-interpreter#readme";
      url = "";
      synopsis = "Lambda Calculus interpreter";
      description = "Please see the README on GitHub at <https://github.com/githubuser/lambda-calculus-interpreter#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "lambda-calculus-interpreter-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambda-calculus-interpreter" or (errorHandler.buildDepError "lambda-calculus-interpreter"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lambda-calculus-interpreter-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambda-calculus-interpreter" or (errorHandler.buildDepError "lambda-calculus-interpreter"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }