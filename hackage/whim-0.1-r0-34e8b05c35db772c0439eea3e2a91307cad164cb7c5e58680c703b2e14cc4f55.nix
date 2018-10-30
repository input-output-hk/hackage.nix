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
      specVersion = "1.2";
      identifier = {
        name = "whim";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Martin <martine@danga.com>";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/whim/";
      url = "";
      synopsis = "A Haskell window manager";
      description = "A simple X Windows window manager in Haskell; written before XMonad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      exes = { "whim" = {}; };
    };
  }