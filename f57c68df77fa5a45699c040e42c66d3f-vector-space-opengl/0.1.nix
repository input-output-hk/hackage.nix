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
      specVersion = "1.8";
      identifier = {
        name = "vector-space-opengl";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "";
      url = "";
      synopsis = "Instances of vector-space classes for OpenGL types";
      description = "Instances of <http://hackage.haskell.org/package/vector-space> classes for 'OpenGL' types.";
      buildType = "Simple";
    };
    components = {
      "vector-space-opengl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.template-haskell)
          (hsPkgs.vector-space)
        ];
      };
    };
  }