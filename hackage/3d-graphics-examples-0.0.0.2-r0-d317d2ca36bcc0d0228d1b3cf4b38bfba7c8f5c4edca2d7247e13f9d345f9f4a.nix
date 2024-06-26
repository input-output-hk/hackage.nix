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
      specVersion = "1.8";
      identifier = { name = "3d-graphics-examples"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2006      Matthias Reisner;\n© 2012–2015 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Matthias Reisner";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/3d-graphics-examples";
      url = "http://hackage.haskell.org/packages/archive/3d-graphics-examples/0.0.0.2/3d-graphics-examples-0.0.0.2.tar.gz";
      synopsis = "Examples of 3D graphics programming with OpenGL";
      description = "This package demonstrates how to program simple interactive 3D\ngraphics with OpenGL. It contains two programs, which are both\nabout fractals:\n\n[L-systems] generates graphics from Lindenmayer systems\n(L-systems). It defines a language for L-systems as an embedded\nDSL.\n\n[Mountains] uses the generalized Brownian motion to generate\ngraphics that resemble mountain landscapes.\n\nThe original versions of these programs were written by Matthias\nReisner as part of a student project at the Brandenburg\nUniversity of Technology at Cottbus, Germany. Wolfgang Jeltsch,\nwho supervised this student project, is now maintaining these\nprograms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mountains" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "l-systems" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
          buildable = true;
        };
      };
    };
  }