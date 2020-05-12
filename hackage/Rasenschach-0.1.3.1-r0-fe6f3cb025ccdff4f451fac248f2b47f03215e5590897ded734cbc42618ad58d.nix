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
      specVersion = "1.2";
      identifier = { name = "Rasenschach"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwoehrle@arcor.de";
      author = "Martin Wöhrle";
      homepage = "http://hub.darcs.net/martingw/Rasenschach";
      url = "";
      synopsis = "Soccer simulation";
      description = "Soccer simulation with simple graphics and highly configurable AI";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Rasenschach" = {
          depends = [
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }