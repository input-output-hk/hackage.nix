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
      identifier = { name = "lambdacube-engine"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "3D rendering engine entirely written in Haskell";
      description = "LambdaCube is a 3D rendering engine written entirely in Haskell.\nIt targets newer graphics hardware. The engine uses Ogre3D's mesh\nand material file format. The main goal of this project is to\nprovide a modern and feature rich graphical backend for various\nhaskell projects (e.g. FRP libraries).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."stb-image" or (errorHandler.buildDepError "stb-image"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }