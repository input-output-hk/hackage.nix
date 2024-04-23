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
      identifier = { name = "gore-and-ash-demo"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-demo";
      url = "";
      synopsis = "Demonstration game for Gore&Ash game engine";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gore-and-ash-demo-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-actor" or (errorHandler.buildDepError "gore-and-ash-actor"))
            (hsPkgs."gore-and-ash-logging" or (errorHandler.buildDepError "gore-and-ash-logging"))
            (hsPkgs."gore-and-ash-network" or (errorHandler.buildDepError "gore-and-ash-network"))
            (hsPkgs."gore-and-ash-sdl" or (errorHandler.buildDepError "gore-and-ash-sdl"))
            (hsPkgs."gore-and-ash-sync" or (errorHandler.buildDepError "gore-and-ash-sync"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "gore-and-ash-demo-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."gore-and-ash" or (errorHandler.buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-actor" or (errorHandler.buildDepError "gore-and-ash-actor"))
            (hsPkgs."gore-and-ash-logging" or (errorHandler.buildDepError "gore-and-ash-logging"))
            (hsPkgs."gore-and-ash-network" or (errorHandler.buildDepError "gore-and-ash-network"))
            (hsPkgs."gore-and-ash-sync" or (errorHandler.buildDepError "gore-and-ash-sync"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }