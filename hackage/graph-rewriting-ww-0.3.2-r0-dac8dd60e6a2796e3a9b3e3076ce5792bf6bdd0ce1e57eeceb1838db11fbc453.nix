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
      identifier = { name = "graph-rewriting-ww"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Interactive reduction of lambda-calculus with explicit sharing";
      description = "Evaluate a λ-letrec term in an interactive graph reduction system. It uses duplicators to explicitly render fully-lazy sharing according to Wadsworth's approach.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ww" = {
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