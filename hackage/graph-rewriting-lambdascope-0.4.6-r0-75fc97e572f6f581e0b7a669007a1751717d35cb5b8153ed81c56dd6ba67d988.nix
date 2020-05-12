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
      identifier = { name = "graph-rewriting-lambdascope"; version = "0.4.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "Implementation of Lambdascope as an interactive graph-rewriting system";
      description = "Lambdascope is an optimal implementation of the λβ-calculus described in the paper \"Lambdascope - Another optimal implementation of the lambda-calculus\" by Vincent van Oostrom, Kees-Jan van de Looij, and Marijn Zwitserlood. Examples of lambda terms are supplied in the \"examples\" directory.";
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