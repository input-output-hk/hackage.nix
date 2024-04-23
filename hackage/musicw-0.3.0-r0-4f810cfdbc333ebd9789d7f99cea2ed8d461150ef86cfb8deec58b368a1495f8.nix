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
      identifier = { name = "musicw"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017- David Ogborn, Jamie Beverley, Luis Navarro del Angel, Spencer Park and others";
      maintainer = "ogbornd@mcmaster.ca";
      author = "David Ogborn, Jamie Beverley, Luis Navarro del Angel, Spencer Park and others";
      homepage = "http://github.com/d0kt0r0/reflex-synth/blob/master/README.md";
      url = "";
      synopsis = "Sound synthesis library, to be used with GHCJS and Web Audio API";
      description = "A library for sound synthesis, currently targeting GHCJS and the Web Audio API. Used in the Inner Ear and Estuary projects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }