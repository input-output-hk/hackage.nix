{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      opengl = true;
      webgl = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ombra";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2014-2017 Luca Prezzavento";
        maintainer = "ziocroc@gmail.com";
        author = "Luca \"ziocroc\" Prezzavento";
        homepage = "https://github.com/ziocroc/Ombra";
        url = "";
        synopsis = "Render engine.";
        description = "Type-safe render engine, with a purely functional API and a shader EDSL. Ombra supports both OpenGL (2.0 with some extensions) and WebGL, through GHCJS.";
        buildType = "Simple";
      };
      components = {
        ombra = {
          depends  = ([
            hsPkgs.base
            hsPkgs.Boolean
            hsPkgs.vector-space
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.hashtables
          ] ++ pkgs.lib.optional (_flags.opengl && !_flags.webgl) hsPkgs.gl) ++ pkgs.lib.optional _flags.webgl hsPkgs.ghcjs-base;
        };
      };
    }