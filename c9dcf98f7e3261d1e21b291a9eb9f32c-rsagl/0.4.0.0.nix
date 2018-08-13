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
      specVersion = "1.2";
      identifier = {
        name = "rsagl";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "The RogueStar Animation and Graphics Library";
      description = "RSAGL, the RogueStar Animation and Graphics Library,\nwas specifically designed for a computer game called\nroguestar, but effort has been made to make it accessable\nto other projects that might benefit from it.  It includes\nmathematical utilities, a 3D modeling language based on\nparametric surfaces, and an arrow-based FRP framework.\n\nThe git repository is available at <http://www.downstairspeople.org/git/rsagl.git>.";
      buildType = "Simple";
    };
    components = {
      "rsagl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.arrows)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.mtl)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.parsec)
          (hsPkgs.Vec)
          (hsPkgs.stm)
          (hsPkgs.data-memocombinators)
        ];
      };
      exes = {
        "_rsagl_process_colors" = {};
      };
    };
  }