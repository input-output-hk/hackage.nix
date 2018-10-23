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
        name = "Rasenschach";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwoehrle@arcor.de";
      author = "Martin Wöhrle";
      homepage = "http://hub.darcs.net/martingw/Rasenschach";
      url = "";
      synopsis = "Soccer simulation";
      description = "Soccer simulation with simple graphics and highly configurable AI";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Rasenschach" = {
          depends  = [
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.Yampa)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.monad-loops)
            (hsPkgs.time)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }