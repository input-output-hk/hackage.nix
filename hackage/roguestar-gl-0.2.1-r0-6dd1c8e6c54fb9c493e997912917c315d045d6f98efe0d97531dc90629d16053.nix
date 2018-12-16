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
      specVersion = "0";
      identifier = {
        name = "roguestar-gl";
        version = "0.2.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell.  Roguestar uses\nOpenGL for graphics.  This is still a very early release and several\nimportant things don't work. Note that there is a runtime dependency on 'netpipes'.\n\nThis initial release allows you to play one of six alien races.  You begin\nthe game stranded on an alien planet, fighting off an endless hoard of\nhostile robots.\n\nThe Darcs repository is available at <http://www.downstairspeople.org/darcs/roguestar-gl>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar-gl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.arrows)
            (hsPkgs.mtl)
            (hsPkgs.MonadRandom)
            (hsPkgs.GLUT)
            (hsPkgs.rsagl)
          ];
        };
        "roguestar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.arrows)
            (hsPkgs.mtl)
            (hsPkgs.MonadRandom)
            (hsPkgs.GLUT)
            (hsPkgs.rsagl)
            (hsPkgs.process)
          ];
        };
      };
    };
  }