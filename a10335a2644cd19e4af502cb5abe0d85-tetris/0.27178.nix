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
      specVersion = "0";
      identifier = {
        name = "tetris";
        version = "0.27178";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<mokehehe@gmail.com>";
      author = "mokehehe";
      homepage = "http://d.hatena.ne.jp/mokehehe/20080921/tetris";
      url = "";
      synopsis = "A 2-D clone of Tetris";
      description = "A simple clone of Tetris using GLUT.\n\nSubversion repo available at <http://svn.coderepos.org/share/lang/haskell/tetris>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tetris" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.random)
          ];
        };
      };
    };
  }