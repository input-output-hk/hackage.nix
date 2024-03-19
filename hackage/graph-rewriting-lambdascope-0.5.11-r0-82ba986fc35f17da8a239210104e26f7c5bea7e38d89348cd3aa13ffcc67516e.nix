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
      specVersion = "1.10";
      identifier = {
        name = "graph-rewriting-lambdascope";
        version = "0.5.11";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Lambdascope, an optimal evaluator of the lambda calculus";
      description = "Lambdascope is an optimal evaluator of the λβ-calculus described in the paper \"Lambdascope - Another optimal implementation of the lambda-calculus\" by Vincent van Oostrom, Kees-Jan van de Looij, and Marijn Zwitserlood. This package contains an interactive application, which implements Lambdascope as a port-graph rewriting system. Call \"lambdascope\" with one of the files from the \"examples\" directory as an argument. For usage of the GUI see \"GraphRewriting.GL.UI\". Use the \"--lmo\" flag for leftmost outermost evalution and \"--bench\" for non-graphical evaluation to weak head normal form.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdascope" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."graph-rewriting" or (errorHandler.buildDepError "graph-rewriting"))
            (hsPkgs."graph-rewriting-layout" or (errorHandler.buildDepError "graph-rewriting-layout"))
            (hsPkgs."graph-rewriting-gl" or (errorHandler.buildDepError "graph-rewriting-gl"))
            (hsPkgs."graph-rewriting-strategies" or (errorHandler.buildDepError "graph-rewriting-strategies"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."indentparser" or (errorHandler.buildDepError "indentparser"))
            ];
          buildable = true;
          };
        };
      };
    }