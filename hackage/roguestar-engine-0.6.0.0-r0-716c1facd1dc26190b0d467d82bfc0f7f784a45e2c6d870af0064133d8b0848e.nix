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
        name = "roguestar-engine";
        version = "0.6.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike game.  Backend.";
      description = "Requires roguestar and roguestar-glut.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar-engine" = {
          depends = [
            (hsPkgs.hslogger)
            (hsPkgs.priority-sync)
            (hsPkgs.PSQueue)
            (hsPkgs.bytestring)
            (hsPkgs.parallel)
            (hsPkgs.stm)
            (hsPkgs.data-memocombinators)
            (hsPkgs.MonadRandom)
            (hsPkgs.MaybeT)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.base)
          ];
        };
      };
    };
  }