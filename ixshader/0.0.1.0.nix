{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ixshader";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Schell Scivally";
        maintainer = "schell@takt.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/ixshader#readme";
        url = "";
        synopsis = "A shallow embedding of the OpenGL Shading Language in Haskell.";
        description = "ixshader is a shallow embedding of the OpenGL Shading\nLanguage in Haskell. It aims to look as close to actual\nglsl shader code as possible, while providing better\ncompile-time safety. Currently writing shader code in\nixshader's IxShader monad will catch variable assignment\nmismatches, multiplication mismatches and some other\ncommon errors. It also builds a description of your shader\nat the type level to use downstream during buffering and\nuniform updates. Lastly, it abstracts over shader code\nwritten for opengl and webgl.";
        buildType = "Simple";
      };
      components = {
        ixshader = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.indexed
            hsPkgs.language-glsl
            hsPkgs.parsec
            hsPkgs.prettyclass
            hsPkgs.singletons
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
      };
    }