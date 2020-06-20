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
      identifier = { name = "math-programming-glpk"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Patrick Steele";
      maintainer = "steele.pat@gmail.com";
      author = "Patrick Steele";
      homepage = "https://github.com/prsteele/math-programming-glpk#readme";
      url = "";
      synopsis = "A GLPK backend to the math-programming library.";
      description = "Please see the README on GitHub at <https://github.com/prsteele/math-programming-glpk#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
          (hsPkgs."math-programming" or (errorHandler.buildDepError "math-programming"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "math-programming-glpk-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
            (hsPkgs."math-programming" or (errorHandler.buildDepError "math-programming"))
            (hsPkgs."math-programming-glpk" or (errorHandler.buildDepError "math-programming-glpk"))
            (hsPkgs."math-programming-tests" or (errorHandler.buildDepError "math-programming-tests"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          libs = [ (pkgs."glpk" or (errorHandler.sysDepError "glpk")) ];
          buildable = true;
          };
        };
      };
    }