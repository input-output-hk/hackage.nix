{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { opengl = true; webgl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ombra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2016 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "Ombra is a render engine written in Haskell. It provides a purely functional interface for advanced graphics programming, including a type safe embedded DSL for GPU programming. You are not required to know or use OpenGL directly to work with Ombra, you just need a basic knowledge of what vertex/fragment shaders, uniforms and attributes are (if you are going to make a more advanced use of it). Ombra supports both OpenGL and WebGL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.vect)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.hashtables)
          ] ++ (pkgs.lib).optional (flags.opengl && !(compiler.isGhcjs && true)) (hsPkgs.gl)) ++ (pkgs.lib).optional (flags.webgl && (compiler.isGhcjs && true)) (hsPkgs.ghcjs-base);
        };
      };
    }