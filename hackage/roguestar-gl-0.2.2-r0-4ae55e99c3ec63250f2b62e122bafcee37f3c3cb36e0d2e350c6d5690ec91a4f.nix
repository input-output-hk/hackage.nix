{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "roguestar-gl";
        version = "0.2.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell.  Roguestar uses\nOpenGL for graphics.  This is still a very early release and several\nimportant things don't work.\n\nThis initial release allows you to play one of six alien races.  You begin\nthe game stranded on an alien planet, fighting off an endless hoard of\nhostile robots.\n\nThe git repository is available at <http://www.downstairspeople.org/git/roguestar-gl.git>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar-gl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.arrows)
            (hsPkgs.mtl)
            (hsPkgs.MonadRandom)
            (hsPkgs.GLUT)
            (hsPkgs.rsagl)
            (hsPkgs.filepath)
          ];
        };
        "roguestar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.arrows)
            (hsPkgs.mtl)
            (hsPkgs.MonadRandom)
            (hsPkgs.GLUT)
            (hsPkgs.rsagl)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }