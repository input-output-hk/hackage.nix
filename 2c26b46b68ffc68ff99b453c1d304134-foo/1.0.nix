{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "foo";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Bartosz Wójcik";
      homepage = "http://sourceforge.net/projects/fooengine/?abmode=1";
      url = "";
      synopsis = "Paper soccer, an OpenGL game.";
      description = "Foo (abbreviation from football) is a playing machine of Paper Soccer, a\npencil and paper game for two players, described in WIKIPEDIA. Written\nin Haskell, contains also simply interface using HOpenGL library.\nProvides bunch of playing algorithms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "foo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.haskell98)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }