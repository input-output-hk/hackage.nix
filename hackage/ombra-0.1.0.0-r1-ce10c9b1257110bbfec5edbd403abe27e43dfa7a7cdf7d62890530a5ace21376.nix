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
      description = "Ombra is a render engine written in Haskell. It provides a purely functional interface for advanced graphics programming, including a type safe embedded DSL for GPU programming. You are not required to know or use OpenGL directly to work with Ombra, you just need a basic knowledge of what vertex/fragment shaders, uniforms and attributes are (if you are going to make a more advanced use of it). Ombra supports both OpenGL and WebGL.\n\n\nThe modules you generally need to use are:\n\n\"Graphics.Rendering.Ombra.D3\": 3D graphics\n\n\"Graphics.Rendering.Ombra.D2\": 2D graphics\n\n\"Graphics.Rendering.Ombra.Generic\": although both D3 and D2 export it, you may want to read the documentation\n\n\"Graphics.Rendering.Ombra.Shader\": for creating shaders\n\n\"Graphics.Rendering.Ombra.Draw\": this lets you render the pure objects you create with D2/D3/Generic\n\n\"Graphics.Rendering.Ombra.Texture\": for creating textures";
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