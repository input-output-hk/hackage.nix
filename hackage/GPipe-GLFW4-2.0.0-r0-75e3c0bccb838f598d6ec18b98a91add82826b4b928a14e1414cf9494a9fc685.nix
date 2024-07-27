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
      identifier = { name = "GPipe-GLFW4"; version = "2.0.0"; };
      license = "MIT";
      copyright = "Patrick Redmond";
      maintainer = "Patrick Redmond";
      author = "Patrick Redmond";
      homepage = "https://github.com/plredmond/GPipe-GLFW";
      url = "";
      synopsis = "GLFW OpenGL context creation for GPipe";
      description = "GPipe-GLFW is a utility library to enable the use of GLFW as\nthe OpenGL window and context handler for GPipe. GPipe is a\ntypesafe functional API based on the conceptual model of\nOpenGL.\nThis version uses OpenGL Core profile 4.5 and uses GPipe-Core\ninstead of GPipe.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."GPipe-Core" or (errorHandler.buildDepError "GPipe-Core"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      exes = {
        "playground" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GPipe-Core" or (errorHandler.buildDepError "GPipe-Core"))
            (hsPkgs."GPipe-GLFW4" or (errorHandler.buildDepError "GPipe-GLFW4"))
            (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GPipe-Core" or (errorHandler.buildDepError "GPipe-Core"))
            (hsPkgs."GPipe-GLFW4" or (errorHandler.buildDepError "GPipe-GLFW4"))
            (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GPipe-Core" or (errorHandler.buildDepError "GPipe-Core"))
            (hsPkgs."GPipe-GLFW4" or (errorHandler.buildDepError "GPipe-GLFW4"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }