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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "grid-proto"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Joe Vargas";
      maintainer = "Joe Vargas";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/grid-proto#readme";
      url = "";
      synopsis = "Game engine for Prototyping on a Grid";
      description = "Exposes a heavily constrained and simple API around SDL2 with builtin font and sound effects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."sdl2-gfx" or (errorHandler.buildDepError "sdl2-gfx"))
          (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))
          (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "arrows-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grid-proto" or (errorHandler.buildDepError "grid-proto"))
            ];
          buildable = true;
          };
        "board-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grid-proto" or (errorHandler.buildDepError "grid-proto"))
            ];
          buildable = true;
          };
        "controller-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grid-proto" or (errorHandler.buildDepError "grid-proto"))
            ];
          buildable = true;
          };
        "sound-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grid-proto" or (errorHandler.buildDepError "grid-proto"))
            ];
          buildable = true;
          };
        "text-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grid-proto" or (errorHandler.buildDepError "grid-proto"))
            ];
          buildable = true;
          };
        "viewport-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grid-proto" or (errorHandler.buildDepError "grid-proto"))
            ];
          buildable = true;
          };
        };
      };
    }