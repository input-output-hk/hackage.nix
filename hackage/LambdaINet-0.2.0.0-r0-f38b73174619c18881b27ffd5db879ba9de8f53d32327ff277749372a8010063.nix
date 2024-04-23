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
      specVersion = "1.6";
      identifier = { name = "LambdaINet"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "not available";
      url = "";
      synopsis = "Graphical Interaction Net Evaluator for Optimal Evaluation";
      description = "An experimental evaluator for Interaction Nets that encodes\noptimal and call-by-need strategies based on Lambdascope, with\nan interactive graphical interface based on OpenGL and GLFW.\nSee the README in source for more information.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "LambdaINet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monad-task" or (errorHandler.buildDepError "monad-task"))
            (hsPkgs."GLFW-task" or (errorHandler.buildDepError "GLFW-task"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }