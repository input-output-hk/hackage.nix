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
    flags = { opengl29 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "vect-opengl"; version = "0.4.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "OpenGL support for the `vect' low-dimensional linear algebra library.";
      description = "OpenGL support for the `vect' low-dimensional linear algebra library. ";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          ] ++ [ (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL")) ];
        buildable = true;
        };
      };
    }