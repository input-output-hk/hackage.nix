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
      identifier = { name = "opengl-dlp-stereo"; version = "0.1.4.1"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/opengl-dlp-stereo";
      url = "https://bitbucket.org/bwbush/opengl-dlp-stereo/downloads/opengl-dlp-stereo-0.1.4.1.tar.gz";
      synopsis = "Library and example for using DLP stereo in OpenGL";
      description = "This package contains functions for rendering 3D stereo using DLP 3-D Ready Sync projectors and active-shutter stereo glasses.  It also includes a sample application (see \\<<https://youtu.be/l3rZbMB2XjM>\\>) and notes regarding hardware setup for DLP.  In particular, note that this technique does not require a graphics card that supports @GL_STEREO@.  This package also works with VR systems such as Google Cardboard \\<<https://www.google.com/get/cardboard/>\\>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "opengl-dlp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }