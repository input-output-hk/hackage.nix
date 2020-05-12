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
      identifier = { name = "graph-rewriting-gl"; version = "0.6.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "OpenGL interface for interactive hypergraph rewriting";
      description = "Once a graph rewriting system has been specified using the graph-rewriting library this package can be\nused to create an application that allows to experiment with this system by interactively applying the\nrewrite rules manually on the graph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."graph-rewriting" or (errorHandler.buildDepError "graph-rewriting"))
          (hsPkgs."graph-rewriting-layout" or (errorHandler.buildDepError "graph-rewriting-layout"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
          ];
        buildable = true;
        };
      };
    }