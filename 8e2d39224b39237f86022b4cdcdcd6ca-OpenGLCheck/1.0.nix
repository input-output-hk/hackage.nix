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
        name = "OpenGLCheck";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Davie (tom.davie@gmail.com)";
      author = "Thomas Davie";
      homepage = "";
      url = "";
      synopsis = "Quickcheck instances for various data structures.";
      description = "Adds arbitrary instances for OpenGL.";
      buildType = "Simple";
    };
    components = {
      "OpenGLCheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
          (hsPkgs.checkers)
          (hsPkgs.OpenGL)
        ];
      };
    };
  }