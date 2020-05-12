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
      identifier = { name = "vinyl-gl"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with OpenGL's GLSL shading language and vinyl records.";
      description = "Using \"Data.Vinyl\" records (similar in spirit to @HList@)\nto carry GLSL uniform parameters and vertex data enables\nlibrary code to reflect over the types of the data to\nfacilitate interaction between Haskell and GLSL. See the\n@examples@ directory in the repository for more\ninformation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
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
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."vinyl-gl" or (errorHandler.buildDepError "vinyl-gl"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }