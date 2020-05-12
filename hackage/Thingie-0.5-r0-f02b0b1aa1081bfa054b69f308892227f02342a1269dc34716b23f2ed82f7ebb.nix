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
      identifier = { name = "Thingie"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "";
      url = "";
      synopsis = "Purely functional 2D drawing";
      description = "A purely functional 2D scenegraph library with functionality similar to a barebones Processing.\nCurrently entirely implmeneted using Cairo, although I would like to go to OpenGL as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }