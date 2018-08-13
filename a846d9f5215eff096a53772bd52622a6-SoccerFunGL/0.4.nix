{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "SoccerFunGL";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://www.cs.ru.nl/~peter88/SoccerFun/SoccerFun.html";
      url = "";
      synopsis = "OpenGL UI for the SoccerFun framework";
      description = "This provides an 2D user interface for the SoccerFun framework implemented in OpenGL/GLUT.";
      buildType = "Simple";
    };
    components = {
      "SoccerFunGL" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.random)
          (hsPkgs.binary)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          (hsPkgs.SoccerFun)
        ];
      };
      exes = { "sfPlayTape" = {}; };
    };
  }