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
    flags = { opengl = true; webgl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ombra"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2016 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "Type-safe render engine, with a purely functional API and a shader EDSL. Ombra supports both OpenGL (2.0 with some extensions) and WebGL, through GHCJS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          ] ++ (pkgs.lib).optional (flags.opengl && !flags.webgl) (hsPkgs."gl" or (errorHandler.buildDepError "gl"))) ++ (pkgs.lib).optional (flags.webgl) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
        buildable = true;
        };
      };
    }