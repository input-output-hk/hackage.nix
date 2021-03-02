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
      identifier = { name = "hsmagick"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "http://community.haskell.org/~tim";
      url = "";
      synopsis = "FFI bindings for the GraphicsMagick library";
      description = "FFI bindings for the GraphicsMagick library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        libs = [
          (pkgs."tiff" or (errorHandler.sysDepError "tiff"))
          (pkgs."jasper" or (errorHandler.sysDepError "jasper"))
          (pkgs."jpeg" or (errorHandler.sysDepError "jpeg"))
          (pkgs."png" or (errorHandler.sysDepError "png"))
          (pkgs."wmflite" or (errorHandler.sysDepError "wmflite"))
          (pkgs."bz2" or (errorHandler.sysDepError "bz2"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ];
        pkgconfig = [
          (pkgconfPkgs."GraphicsMagick" or (errorHandler.pkgConfDepError "GraphicsMagick"))
          (pkgconfPkgs."lcms" or (errorHandler.pkgConfDepError "lcms"))
          (pkgconfPkgs."freetype2" or (errorHandler.pkgConfDepError "freetype2"))
          (pkgconfPkgs."sm" or (errorHandler.pkgConfDepError "sm"))
          (pkgconfPkgs."ice" or (errorHandler.pkgConfDepError "ice"))
          (pkgconfPkgs."x11" or (errorHandler.pkgConfDepError "x11"))
          (pkgconfPkgs."libxml-2.0" or (errorHandler.pkgConfDepError "libxml-2.0"))
          ];
        buildable = true;
        };
      };
    }