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
      identifier = { name = "lambdacube-gl"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "OpenGL backend for LambdaCube graphics language (main package)";
      description = "LambdaCube 3D is a domain specific language and library that makes\nit possible to program GPUs in a purely functional style.\nProgramming with LambdaCube constitutes of composing a data-flow\ndescription, which is compiled into a specialised library. The\nlanguage provides a uniform way to define shaders and compositor\nchains by treating both streams and framebuffers as first-class\nvalues.\n\nAs a user of the library you only need to import the \"LambdaCube.GL\" and\n\"LambdaCube.GL.Mesh\" modules. You should check out the pointers at <http://lambdacube3d.wordpress.com/getting-started/>\nto understand the principle behind the library, and also have a good look\nat the @lambdacube-samples@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."bitmap" or (errorHandler.buildDepError "bitmap"))
          (hsPkgs."language-glsl" or (errorHandler.buildDepError "language-glsl"))
          (hsPkgs."lambdacube-core" or (errorHandler.buildDepError "lambdacube-core"))
          (hsPkgs."lambdacube-edsl" or (errorHandler.buildDepError "lambdacube-edsl"))
          ];
        buildable = true;
        };
      };
    }