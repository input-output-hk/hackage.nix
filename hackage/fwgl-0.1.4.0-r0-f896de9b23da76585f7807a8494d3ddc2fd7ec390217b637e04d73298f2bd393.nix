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
      identifier = { name = "fwgl"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/FWGL";
      url = "";
      synopsis = "Game engine";
      description = "FWGL is a library for interactive 2D and 3D applications and games. It provides a purely functional interface for advanced graphics programming, including a type safe embedded DSL for GPU programming. You are not required to know or use OpenGL directly to work with FWGL, you just need a basic knowledge of what vertex/fragment shaders, uniforms and attributes are (if you are going to make a more advanced use of it). FWGL is aimed at functional reactive programming (with Yampa), but provides a non-reactive interface as well. There are two backends: fwgl-glfw and fwgl-javascript.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
        ];
        buildable = true;
      };
    };
  }