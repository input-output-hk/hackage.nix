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
      identifier = { name = "GLFW-task"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul Liu <paul@thev.net>";
      author = "Paul Liu ";
      homepage = "http://github.com/ninegua/GLFW-task";
      url = "";
      synopsis = "GLFW utility functions to use together with monad-task.";
      description = "GLFW (<http://hackage.haskell.org/package/GLFW>) is a Haskell\nbinding to the GLFW C library for writing OpenGL programs.\nThis package provides some utility functions for writing GLFW\nprograms using the monad-task library\n(<http://hackage.haskell.org/package/GLFW-task>). An example\nis provided in the package source to demonstrate its usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
          (hsPkgs."monad-task" or (errorHandler.buildDepError "monad-task"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }