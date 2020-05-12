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
      identifier = { name = "Hieroglyph"; version = "2.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "http://vis.renci.org/jeff/hieroglyph";
      url = "";
      synopsis = "Purely functional 2D drawing";
      description = "A purely functional 2D scenegraph library with functionality similar to a barebones Processing.\nCurrently entirely implmeneted using Cairo, although I would like to go to OpenGL as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."FTGL" or (errorHandler.buildDepError "FTGL"))
          (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."buster" or (errorHandler.buildDepError "buster"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."gtkglext" or (errorHandler.buildDepError "gtkglext"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }