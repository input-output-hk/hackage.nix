{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      opengl = true;
      webgl = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ombra";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2016 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "Type-safe render engine, with a purely functional API and a shader EDSL. Ombra supports both OpenGL (2.0 with some extensions) and WebGL, through GHCJS.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.vect)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.hashtables)
        ] ++ pkgs.lib.optional (flags.opengl && !flags.webgl) (hsPkgs.gl)) ++ pkgs.lib.optional (flags.webgl) (hsPkgs.ghcjs-base);
      };
    };
  }