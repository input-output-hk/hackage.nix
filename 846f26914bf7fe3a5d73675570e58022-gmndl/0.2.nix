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
      specVersion = "1.4";
      identifier = {
        name = "gmndl";
        version = "0.2";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set explorer using GTK";
      description = "A Mandelbrot Set explorer, with (currently) only one\ncontrol (left-click to center and zoom in).  Multple\nrender threads use higher precision maths at higher\nzoom levels.  Suggested usage:\n\n@gmndl +RTS -N -qa -RTS --width=640 --height=480@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gmndl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.gtk)
            (hsPkgs.gtkglext)
            (hsPkgs.mtl)
            (hsPkgs.OpenGL)
            (hsPkgs.priority-queue)
            (hsPkgs.qd)
          ];
        };
      };
    };
  }