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
      identifier = { name = "animate-preview"; version = "0.1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 Joe Vargas";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/animate-preview#readme";
      url = "";
      synopsis = "Preview tool for sprite animation";
      description = "Preview tool for sprite animation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."animate" or (errorHandler.buildDepError "animate"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."key-state" or (errorHandler.buildDepError "key-state"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-fps" or (errorHandler.buildDepError "sdl2-fps"))
          (hsPkgs."sdl2-gfx" or (errorHandler.buildDepError "sdl2-gfx"))
          (hsPkgs."sdl2-image" or (errorHandler.buildDepError "sdl2-image"))
          (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-conversions" or (errorHandler.buildDepError "text-conversions"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "animate-preview" = {
          depends = [
            (hsPkgs."animate-preview" or (errorHandler.buildDepError "animate-preview"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }