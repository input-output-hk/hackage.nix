{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "astrds";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Clara Loeh <darcs@wuisch.org>";
      author = "Clara Loeh <darcs@wuisch.org>,\nAndres Loeh <ksastrds@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "an incomplete 2d space game";
      description = "astrds is an intentionally incomplete 2d space game. The code\nis intended to be a playground for Haskell programmers who want\nto add their own features and extensions. The\nimplementation is based on SDL and OpenGL and includes\nsimple audio and joystick support.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "astrds" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.OpenGL)
            (hsPkgs.SDL)
            (hsPkgs.SDL-ttf)
            (hsPkgs.SDL-image)
            (hsPkgs.SDL-mixer)
            (hsPkgs.unix)
            (hsPkgs.MonadRandom)
          ];
        };
      };
    };
  }