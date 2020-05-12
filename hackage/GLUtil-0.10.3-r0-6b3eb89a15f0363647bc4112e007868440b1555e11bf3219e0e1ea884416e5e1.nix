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
      specVersion = "2.0";
      identifier = { name = "GLUtil"; version = "0.10.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012,2013 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Miscellaneous OpenGL utilities.";
      description = "Helpers for working with shaders, buffer objects, and\ntextures in OpenGL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10.1" && !system.isWindows) (hsPkgs."hpp" or (errorHandler.buildDepError "hpp"));
        build-tools = if compiler.isGhc && (compiler.version).ge "7.10.1" && !system.isWindows
          then [
            (hsPkgs.buildPackages.hpp or (pkgs.buildPackages.hpp or (errorHandler.buildToolDepError "hpp")))
            ]
          else [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")))
            ];
        buildable = true;
        };
      };
    }