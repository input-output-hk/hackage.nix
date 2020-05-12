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
      identifier = { name = "affection"; version = "0.0.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "https://github.com/nek0/affection#readme";
      url = "";
      synopsis = "A simple Game Engine using SDL";
      description = "See homepage for description.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
          (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          ];
        buildable = true;
        };
      exes = {
        "example00" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."affection" or (errorHandler.buildDepError "affection"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
            (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if flags.examples then true else false;
          };
        "example01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."affection" or (errorHandler.buildDepError "affection"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
            (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if flags.examples then true else false;
          };
        "example02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."affection" or (errorHandler.buildDepError "affection"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
            (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if flags.examples then true else false;
          };
        "example03" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."affection" or (errorHandler.buildDepError "affection"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gegl" or (errorHandler.buildDepError "gegl"))
            (hsPkgs."babl" or (errorHandler.buildDepError "babl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }