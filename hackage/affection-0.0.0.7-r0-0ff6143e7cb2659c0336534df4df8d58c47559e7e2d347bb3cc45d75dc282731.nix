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
    flags = {
      verbose = false;
      debug = false;
      warn = false;
      error = false;
      examples = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "affection"; version = "0.0.0.7"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "https://github.com/nek0/affection#readme";
      url = "";
      synopsis = "A simple Game Engine using SDL";
      description = "This package contains Affection, a simple game engine\nwritten in Haskell using SDL.\nThis Engine is still work in progress and even minor\nversion bumps may contain breaking api changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      exes = {
        "example00" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."affection" or (errorHandler.buildDepError "affection"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }