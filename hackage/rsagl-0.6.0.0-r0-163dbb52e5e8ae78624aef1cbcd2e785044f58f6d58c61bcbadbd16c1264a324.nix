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
      identifier = { name = "rsagl"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "The RogueStar Animation and Graphics Library";
      description = "RSAGL, the RogueStar Animation and Graphics Library,\nwas specifically designed for a computer game called\nroguestar, but effort has been made to make it accessable\nto other projects that might benefit from it.  It includes\nmathematical utilities, a 3D modeling language based on\nparametric surfaces, and an arrow-based FRP framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rsagl-math" or (errorHandler.buildDepError "rsagl-math"))
          (hsPkgs."rsagl-frp" or (errorHandler.buildDepError "rsagl-frp"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
          (hsPkgs."Vec-OpenGLRaw" or (errorHandler.buildDepError "Vec-OpenGLRaw"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
          ];
        buildable = true;
        };
      };
    }