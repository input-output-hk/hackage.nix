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
        name = "rsagl";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "The RogueStar Animation and Graphics Library";
      description = "RSAGL, the RogueStar Animation and Graphics Library, includes a\ndomain-specific monad for 3D modelling of arbitrary parametric surfaces,\nas well as an animation monad and arrow, which is more or less like YAMPA\nas a stack of arrow transformers.  RSAGL was specifically designed for\nroguestar, but every effort has been made (including the license) to make\nit accessable to other projects that might benefit from it.\n\nThe Darcs repository is available at <http://www.downstairspeople.org/darcs/rsagl>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }