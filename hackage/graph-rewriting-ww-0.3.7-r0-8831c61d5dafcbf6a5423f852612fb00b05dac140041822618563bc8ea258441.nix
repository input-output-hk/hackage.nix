{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "graph-rewriting-ww";
        version = "0.3.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Evaluator of the lambda-calculus in an interactive graph rewriting system with explicit sharing";
      description = "Evaluate a given λ-term (letrecs may be used) interactively. It uses duplicators to explicitly render fully-lazy sharing according to Wadsworth's approach. The reduction rules are split into two groups, safe rules and unsafe rules, which implement the procedure for unsharing the MFE under one duplicator.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ww" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.graph-rewriting)
            (hsPkgs.graph-rewriting-layout)
            (hsPkgs.graph-rewriting-gl)
            (hsPkgs.parsec)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.IndentParser)
          ];
        };
      };
    };
  }