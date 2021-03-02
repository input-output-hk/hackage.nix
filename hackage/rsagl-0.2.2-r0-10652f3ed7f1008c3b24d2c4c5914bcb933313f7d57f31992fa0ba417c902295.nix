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
      specVersion = "1.0";
      identifier = { name = "rsagl"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "The RogueStar Animation and Graphics Library";
      description = "RSAGL, the RogueStar Animation and Graphics Library, includes a\ndomain-specific monad for 3D modelling of arbitrary parametric surfaces,\nas well as an animation monad and arrow, which is more or less like YAMPA\nas a stack of arrow transformers.  RSAGL was specifically designed for\nroguestar, but every effort has been made (including the license) to make\nit accessable to other projects that might benefit from it.\n\nThe git repository is available at <http://www.downstairspeople.org/git/rsagl.git>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }