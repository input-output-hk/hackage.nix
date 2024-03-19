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
      identifier = { name = "graph-rewriting-ww"; version = "0.3.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "https://github.com/jrochel/graph-rewriting";
      url = "";
      synopsis = "Interactive evaluator of the lambda-calculus with explicit sharing";
      description = "Evaluate a given λ-term (letrecs may be used) interactively in a port-graph rewriting system. It uses duplicators to explicitly render fully-lazy sharing according to Wadsworth's approach. The reduction rules are split into two groups, safe rules and unsafe rules, which implement the procedure for unsharing the MFE under one duplicator.";
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