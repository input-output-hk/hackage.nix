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
      identifier = { name = "peakachu"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "";
      url = "";
      synopsis = "An FRP library with a GLUT backend";
      description = "An experiemental simple FRP library.\nGLUT backend included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
        buildable = true;
        };
      };
    }