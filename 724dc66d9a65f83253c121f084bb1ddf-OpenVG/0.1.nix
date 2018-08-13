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
        name = "OpenVG";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (shivag-0.2.0) binding";
      description = "A Haskell binding for the OpenVG vector graphics API version 1.0.1\n(specifically the shivavg-0.2.0 implementation).";
      buildType = "Simple";
    };
    components = {
      "OpenVG" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
        ];
      };
    };
  }