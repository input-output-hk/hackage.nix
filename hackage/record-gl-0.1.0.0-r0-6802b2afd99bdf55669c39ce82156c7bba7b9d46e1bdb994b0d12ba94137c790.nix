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
      identifier = { name = "record-gl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Original work copyright (C) 2013 Anthony Cowley, modifications copyright (C) 2015 Sebastián Méndez";
      maintainer = "sebas.chinoir@gmail.com";
      author = "Sebastián Méndez";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with OpenGL's GLSL shading language and Nikita Volkov's \"Record\"s.";
      description = "Using Nikita Volkov's \"Record\" records\nto carry GLSL uniform parameters and vertex data enables\nlibrary code to reflect over the types of the data to\nfacilitate interaction between Haskell and GLSL. See the\n@examples@ directory in the repository for more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."record" or (errorHandler.buildDepError "record"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."record" or (errorHandler.buildDepError "record"))
            (hsPkgs."record-gl" or (errorHandler.buildDepError "record-gl"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
          buildable = true;
        };
      };
    };
  }