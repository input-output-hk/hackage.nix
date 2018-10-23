{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "roguestar-gl";
        version = "0.6.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike game.  Client library.";
      description = "Roguestar-glut and roguestar-gtk depend on this library for the bulk of their functionality.";
      buildType = "Simple";
    };
    components = {
      "roguestar-gl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.GLUT)
          (hsPkgs.rsagl)
          (hsPkgs.rsagl-math)
          (hsPkgs.rsagl-frp)
          (hsPkgs.containers)
          (hsPkgs.arrows)
          (hsPkgs.mtl)
          (hsPkgs.MonadRandom)
          (hsPkgs.OpenGL)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.stm)
          (hsPkgs.priority-sync)
        ];
      };
    };
  }