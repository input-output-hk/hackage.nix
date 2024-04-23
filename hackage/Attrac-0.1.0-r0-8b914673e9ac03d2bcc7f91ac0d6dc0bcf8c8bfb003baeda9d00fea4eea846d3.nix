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
      specVersion = "1.0";
      identifier = { name = "Attrac"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ruben Henner Zilibowitz <rzilibowitz at yahoo dot com dot au>";
      author = "Ruben Henner Zilibowitz <rzilibowitz at yahoo dot com dot au>";
      homepage = "http://patch-tag.com/r/rhz/StrangeAttractors";
      url = "";
      synopsis = "Visualisation of Strange Attractors in 3-Dimensions";
      description = "This software uses innovative techniques to achieve 3-D visualisation\nof the point sets known as Strange Attractors resulting from iteration\nof non-linear maps on points in Euclidean Space.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Attrac" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }