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
      identifier = { name = "reactive-banana-sdl"; version = "0.1.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "R. Kyle Murphy, JP Moresmau";
      homepage = "https://github.com/JPMoresmau/reactive-banana-sdl";
      url = "";
      synopsis = "Reactive Banana bindings for SDL";
      description = "Provides bindings and convenience functions for using reactive banana with SDL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
          (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
        ];
        buildable = true;
      };
    };
  }