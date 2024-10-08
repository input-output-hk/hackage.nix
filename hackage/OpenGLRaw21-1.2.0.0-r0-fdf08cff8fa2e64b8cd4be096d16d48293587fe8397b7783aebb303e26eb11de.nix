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
      identifier = { name = "OpenGLRaw21"; version = "1.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "The intersection of OpenGL 2.1 and OpenGL 3.1 Core";
      description = "This package simply reexports a subset of the\nparts of OpenGLRaw which are compatible with\nOpenGL 2.1. The idea is that you can have greater\ncertainty about compatibility with less capable\ngraphics cards by only importing\nGraphics.Rendering.OpenGL.Raw.Core21 and the exact\nmodules for whatever additional extensions you\nneed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
        ];
        buildable = true;
      };
    };
  }