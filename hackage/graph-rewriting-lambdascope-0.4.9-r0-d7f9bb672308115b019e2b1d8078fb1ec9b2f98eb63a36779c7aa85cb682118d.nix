{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "graph-rewriting-lambdascope";
        version = "0.4.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Implementation of Lambdascope as an interactive graph-rewriting system";
      description = "Lambdascope is an optimal implementation of the λβ-calculus described in the paper \"Lambdascope - Another optimal implementation of the lambda-calculus\" by Vincent van Oostrom, Kees-Jan van de Looij, and Marijn Zwitserlood. Call \"lambdascope\" with one of the files from the \"examples\" directory as an argument. For usage of the GUI see \"GraphRewriting.GL.UI\".";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambdascope" = {
          depends  = [
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