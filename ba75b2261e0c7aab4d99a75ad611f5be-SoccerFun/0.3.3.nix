{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SoccerFun";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://www.cs.ru.nl/~peter88/SoccerFun/SoccerFun.html";
        url = "";
        synopsis = "Football simulation framework for teaching functional programming";
        description = "This is a Haskell port of the the SoccerFun framework originally implemented in Clean.\nFrom the website: Soccer-Fun is an educational project to stimulate functional programming by thinking about, designing, implementing, running, and competing with the brains of football players! It is open for participation by everybody who likes to contribute. It is not restricted to a particular functional programming language.";
        buildType = "Simple";
      };
      components = {
        "SoccerFun" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.GLUT
            hsPkgs.OpenGL
            hsPkgs.random
            hsPkgs.mtl
          ];
        };
      };
    }