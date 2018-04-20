{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rsagl-math";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
        author = "Christopher Lane Hinson";
        homepage = "http://roguestar.downstairspeople.org/";
        url = "";
        synopsis = "The RogueStar Animation and Graphics Library: Mathematics";
        description = "RSAGL, the RogueStar Animation and Graphics Library,\nwas specifically designed for a computer game called\nroguestar, but effort has been made to make it accessable\nto other projects that might benefit from it.  This\npackage includes mathematical algorithms to support\nthe project.";
        buildType = "Simple";
      };
      components = {
        rsagl-math = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.OpenGL
            hsPkgs.OpenGLRaw
            hsPkgs.parsec
            hsPkgs.parallel
            hsPkgs.Vec
            hsPkgs.Vec-OpenGLRaw
            hsPkgs.deepseq
          ];
        };
      };
    }