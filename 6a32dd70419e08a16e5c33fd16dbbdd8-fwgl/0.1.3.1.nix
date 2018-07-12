{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fwgl";
          version = "0.1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ziocroc@gmail.com";
        author = "Luca \"ziocroc\" Prezzavento";
        homepage = "https://github.com/ziocroc/FWGL";
        url = "";
        synopsis = "Game engine";
        description = "FWGL is a library for interactive 2D and 3D applications and games. It provides a purely functional interface for advanced graphics programming, including a type safe embedded DSL for GPU programming. You are not required to know or use OpenGL directly to work with FWGL, you just need a basic knowledge of what vertex/fragment shaders, uniforms and attributes are (if you are going to make a more advanced use of it). FWGL is aimed at functional reactive programming (with Yampa), but provides a non-reactive interface as well. There are two backends: fwgl-glfw and fwgl-javascript.";
        buildType = "Simple";
      };
      components = {
        "fwgl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Yampa
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.transformers
            hsPkgs.vect
          ];
        };
      };
    }