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
      identifier = { name = "GLFW-b"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Bindings to GLFW OpenGL library";
      description = "Bindings to <http://www.glfw.org/ GLFW>, an open source, multi-platform\nlibrary for creating windows with OpenGL contexts and managing input and\nevents.\n\nGLFW-b depends on\n<http://hackage.haskell.org/package/bindings-GLFW bindings-GLFW>, which, as\nof the time of this writing, binds to\n<http://www.glfw.org/Version-3.0.1-released.html GLFW 3.0.1, released 2013-06-17>.\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.0.x. Please see the\n<http://www.glfw.org/docs/3.0/moving.html transition guide>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-GLFW" or (errorHandler.buildDepError "bindings-GLFW"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
        ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-GLFW" or (errorHandler.buildDepError "bindings-GLFW"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          ] ++ [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }