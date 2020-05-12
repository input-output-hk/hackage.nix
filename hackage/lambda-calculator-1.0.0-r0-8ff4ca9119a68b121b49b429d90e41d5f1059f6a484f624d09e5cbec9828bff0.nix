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
      identifier = { name = "lambda-calculator"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2016 Sean Gillespie";
      maintainer = "sean@mistersg.net";
      author = "Sean D Gillespie";
      homepage = "https://github.com/sgillespie/lambda-calculus#readme";
      url = "";
      synopsis = "A lambda calculus interpreter";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "lambda-calculator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambda-calculator" or (errorHandler.buildDepError "lambda-calculator"))
            (hsPkgs."Shellac" or (errorHandler.buildDepError "Shellac"))
            (hsPkgs."Shellac-readline" or (errorHandler.buildDepError "Shellac-readline"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lambda-calculus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambda-calculator" or (errorHandler.buildDepError "lambda-calculator"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }