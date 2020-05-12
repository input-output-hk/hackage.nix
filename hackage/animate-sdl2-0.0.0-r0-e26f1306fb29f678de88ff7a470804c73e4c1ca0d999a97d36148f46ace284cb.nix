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
      identifier = { name = "animate-sdl2"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Joe Vargas";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/animate-sdl2#readme";
      url = "";
      synopsis = "sdl2 + animate auxiliary library";
      description = "sdl2 is a commonly used media library. animate is a general animation library. Combining animate and sdl2, animate-sdl2 provides accessible glue-code to load and draw sprites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."animate" or (errorHandler.buildDepError "animate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
          ];
        buildable = true;
        };
      };
    }