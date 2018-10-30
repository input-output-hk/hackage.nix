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
        name = "graph-rewriting-cl";
        version = "0.2.2";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.graph-rewriting)
            (hsPkgs.graph-rewriting-layout)
            (hsPkgs.graph-rewriting-gl)
            (hsPkgs.parsec)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
          ];
        };
      };
    };
  }