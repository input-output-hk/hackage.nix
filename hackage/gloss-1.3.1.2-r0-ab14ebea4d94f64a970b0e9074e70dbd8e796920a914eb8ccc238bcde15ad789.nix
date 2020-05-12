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
      identifier = { name = "gloss"; version = "1.3.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Painless 2D vector graphics, animations and simulations.";
      description = "Gloss hides the pain of drawing simple vector graphics behind a nice data type and\na few display functions. Gloss uses OpenGL and GLUT under the hood, but you won't\nhave to worry about any of that. Get something cool on the screen in under 10 minutes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
        buildable = true;
        };
      };
    }