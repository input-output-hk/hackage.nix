{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-ww"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Interactive reduction of lambda-calculus with explicit sharing";
      description = "Evaluate a λ-letrec term in an interactive graph reduction system. It uses duplicators to explicitely render sharing (and unsharing) according to Wadsworth's approach.";
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