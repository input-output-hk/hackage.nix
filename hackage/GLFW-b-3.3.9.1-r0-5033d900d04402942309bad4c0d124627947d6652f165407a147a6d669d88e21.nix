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
      identifier = { name = "GLFW-b"; version = "3.3.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>\n, Schell Scivally <schell.scivally@synapsegroup.com>\n, Pavel Krajcevski <krajcevski@gmail.com>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Bindings to GLFW OpenGL library";
      description = "Bindings to GLFW (<http://www.glfw.org/>), an open source, multi-platform\nlibrary for creating windows with OpenGL contexts and managing input and\nevents.\n\nGLFW-b depends on bindings-GLFW\n(<http://hackage.haskell.org/package/bindings-GLFW>), which, as of the time\nof this writing, binds to GLFW 3.3.9, released 2023-12-13\n(<http://www.glfw.org/Version-3.3.0-released.html>\n<http://www.glfw.org/changelog.html>).\n\nIf you've used GLFW < 3 before, you should read the transition guide\n(<http://www.glfw.org/docs/3.0/moving.html>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bindings-GLFW" or (errorHandler.buildDepError "bindings-GLFW"))
        ];
        buildable = true;
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bindings-GLFW" or (errorHandler.buildDepError "bindings-GLFW"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }