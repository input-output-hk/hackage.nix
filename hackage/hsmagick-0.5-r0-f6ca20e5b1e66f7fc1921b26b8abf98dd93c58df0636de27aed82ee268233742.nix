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
      specVersion = "1.2.3";
      identifier = { name = "hsmagick"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "Vincent Gerard, vincent@xenbox.fr";
      author = "Tim Chevalier";
      homepage = "https://github.com/vincentg/hsmagick";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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
          ];
        pkgconfig = [
          (pkgconfPkgs."GraphicsMagick" or (errorHandler.pkgConfDepError "GraphicsMagick"))
          (pkgconfPkgs."lcms" or (errorHandler.pkgConfDepError "lcms"))
          (pkgconfPkgs."freetype2" or (errorHandler.pkgConfDepError "freetype2"))
          (pkgconfPkgs."libxml-2.0" or (errorHandler.pkgConfDepError "libxml-2.0"))
          ];
        buildable = true;
        };
      };
    }