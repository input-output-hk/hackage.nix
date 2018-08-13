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
        name = "fwgl-glfw";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ZioCrocifisso\" Prezzavento";
      homepage = "https://github.com/ZioCrocifisso/FWGL";
      url = "";
      synopsis = "FWGL GLFW backend";
      description = "FWGL GLFW backend.";
      buildType = "Simple";
    };
    components = {
      "fwgl-glfw" = {
        depends  = [
          (hsPkgs.fwgl)
          (hsPkgs.base)
          (hsPkgs.Yampa)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.gl)
          (hsPkgs.JuicyPixels)
          (hsPkgs.GLFW-b)
        ];
      };
    };
  }