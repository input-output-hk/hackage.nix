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
      identifier = { name = "graph-rewriting-gl"; version = "0.6.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "OpenGL interface for interactive port graph rewriting";
      description = "Once a graph rewriting system has been specified using the @graph-rewriting@ library this package can be used to create an application that allows to experiment with this system by interactively applying the rewrite rules. The usage of the interface is the same for all applications. In the center you will see the graph. It might be moving around which is due the force-directed layouting. On the top-left corner you will find a menu with the individual rewriting rules of the rewriting system. The controls are described in the \"GraphRewriting.GL.UI\" module.";
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