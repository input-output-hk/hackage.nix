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
        name = "roguestar-engine";
        version = "0.4.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike (turn-based, chessboard-tiled, role playing) game";
      description = "Roguestar is a science fiction themed roguelike (turn-based,\nchessboard-tiled, role playing) game written in Haskell. This package\nprovides the core game engine; you'll probably want to also install the\nOpenGL client.\n\nThe git repository is available at <http://www.downstairspeople.org/git/roguestar-engine.git>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar-engine" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.mtl)
            (hsPkgs.MaybeT)
            (hsPkgs.MonadRandom)
            (hsPkgs.data-memocombinators)
            (hsPkgs.stm)
            (hsPkgs.parallel)
            (hsPkgs.bytestring)
            (hsPkgs.PSQueue)
            (hsPkgs.priority-sync)
          ];
        };
      };
    };
  }