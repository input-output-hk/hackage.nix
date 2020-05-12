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
      identifier = { name = "graph-rewriting-cl"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Interactive graph rewriting system implementing various well-known combinators";
      description = "Currently the following combinators are supported: S K I B C S' B' C' W";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."graph-rewriting" or (errorHandler.buildDepError "graph-rewriting"))
            (hsPkgs."graph-rewriting-layout" or (errorHandler.buildDepError "graph-rewriting-layout"))
            (hsPkgs."graph-rewriting-gl" or (errorHandler.buildDepError "graph-rewriting-gl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            ];
          buildable = true;
          };
        };
      };
    }