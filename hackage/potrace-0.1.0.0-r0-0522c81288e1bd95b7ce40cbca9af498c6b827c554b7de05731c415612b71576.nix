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
      identifier = { name = "potrace"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (C) 2015 Christopher Chalmers";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "";
      url = "";
      synopsis = "Trace bitmap images to paths using potrace";
      description = "Trace bitmap images to paths using the potrace library. Helpers for\ngenerating bitmap images from functions or JuicyPixel images.\n\nSee <https://github.com/diagrams/potrace-diagrams/ potrace-diagrams>\nfor an implimentation for the diagrams library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-potrace" or (errorHandler.buildDepError "bindings-potrace"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }