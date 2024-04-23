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
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-ski"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "Implementation of the SKI combinators as an interactive graph rewriting system";
      description = "This package serves as an example for how to use the graph-rewriting, graph-rewriting-layout, and graph-rewriting-gl packages to create a graph rewriting system with an interactive, graphical front-end. The sources are well documented and can used as a tutorial for implementing your own rewrite system. Start reading in Graph.hs";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ski" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."graph-rewriting" or (errorHandler.buildDepError "graph-rewriting"))
            (hsPkgs."graph-rewriting-layout" or (errorHandler.buildDepError "graph-rewriting-layout"))
            (hsPkgs."graph-rewriting-gl" or (errorHandler.buildDepError "graph-rewriting-gl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."IndentParser" or (errorHandler.buildDepError "IndentParser"))
          ];
          buildable = true;
        };
      };
    };
  }