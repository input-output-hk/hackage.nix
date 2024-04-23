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
      identifier = { name = "handa-opengl"; version = "0.1.12.1"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/handa-opengl";
      url = "https://bitbucket.org/bwbush/handa-opengl/downloads/handa-opengl-0.1.12.1.tar.gz";
      synopsis = "Utility functions for OpenGL and GLUT";
      description = "This is a collection of miscellaneous utility functions for OpenGL and GLUT.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."opengl-dlp-stereo" or (errorHandler.buildDepError "opengl-dlp-stereo"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ];
        buildable = true;
      };
    };
  }