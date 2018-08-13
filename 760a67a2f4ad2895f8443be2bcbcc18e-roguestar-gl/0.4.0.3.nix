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
        name = "roguestar-gl";
        version = "0.4.0.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell.  Roguestar uses\nOpenGL for graphics.  This is still a very early release.\n\nThe git repository is available at <http://www.downstairspeople.org/git/roguestar-gl.git>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar-gl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rsagl)
            (hsPkgs.containers)
            (hsPkgs.arrows)
            (hsPkgs.mtl)
            (hsPkgs.MonadRandom)
            (hsPkgs.GLUT)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.stm)
            (hsPkgs.priority-sync)
          ];
        };
        "roguestar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rsagl)
            (hsPkgs.containers)
            (hsPkgs.arrows)
            (hsPkgs.mtl)
            (hsPkgs.MonadRandom)
            (hsPkgs.GLUT)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.stm)
            (hsPkgs.priority-sync)
            (hsPkgs.process)
            (hsPkgs.old-time)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }