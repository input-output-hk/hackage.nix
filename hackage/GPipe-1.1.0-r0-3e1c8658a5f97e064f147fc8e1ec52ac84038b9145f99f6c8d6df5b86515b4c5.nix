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
      specVersion = "1.2";
      identifier = { name = "GPipe"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://www.haskell.org/haskellwiki/GPipe";
      url = "http://hackage.haskell.org/package/GPipe";
      synopsis = "A functional graphics API for programmable GPUs";
      description = "GPipe models the entire graphics pipeline in a purely functional, immutable and typesafe way. It is built on top of the programmable pipeline (i.e. non-fixed function) of\nOpenGL 2.1 and uses features such as vertex buffer objects (VBO's), texture objects and GLSL shader code synthetisation to create fast graphics programs. Buffers,\ntextures and shaders are cached internally to ensure fast framerate, and GPipe is also capable of managing multiple windows and contexts. By creating your own\ninstances of GPipes classes, it's possible to use additional datatypes on the GPU.\n\nYou'll need full OpenGL 2.1 support, including GLSL 1.20 to use GPipe. Thanks to OpenGLRaw, you may still build GPipe programs on machines lacking this support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
          (hsPkgs."Vec-Boolean" or (errorHandler.buildDepError "Vec-Boolean"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
          ];
        buildable = true;
        };
      };
    }