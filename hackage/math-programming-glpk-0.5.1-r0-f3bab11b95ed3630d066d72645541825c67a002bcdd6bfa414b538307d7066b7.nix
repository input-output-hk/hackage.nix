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
      identifier = { name = "math-programming-glpk"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2018-2023, Patrick Steele";
      maintainer = "steele.pat@gmail.com";
      author = "Patrick Steele";
      homepage = "";
      url = "";
      synopsis = "A GLPK backend to the math-programming library.";
      description = "Please see the <https://github.com/prsteele/math-programming/blob/main/README.md README on GitHub>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
          (hsPkgs."math-programming" or (errorHandler.buildDepError "math-programming"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "math-programming-glpk-test-suite" = {
          depends = [
            (hsPkgs."math-programming-glpk" or (errorHandler.buildDepError "math-programming-glpk"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."math-programming" or (errorHandler.buildDepError "math-programming"))
            (hsPkgs."math-programming-tests" or (errorHandler.buildDepError "math-programming-tests"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }