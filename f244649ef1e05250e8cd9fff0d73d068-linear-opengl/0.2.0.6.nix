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
      specVersion = "1.10";
      identifier = {
        name = "linear-opengl";
        version = "0.2.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://www.github.com/bgamari/linear-opengl";
      url = "";
      synopsis = "Isomorphisms between linear and OpenGL types";
      description = "This provides various useful utilities for mapping OpenGL vectors, vertices, and matrices to their analogues in the `linear` package";
      buildType = "Simple";
    };
    components = {
      "linear-opengl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.distributive)
          (hsPkgs.tagged)
          (hsPkgs.OpenGL)
          (hsPkgs.OpenGLRaw)
        ];
      };
    };
  }