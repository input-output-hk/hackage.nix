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
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2014-2017 Luca Prezzavento";
        maintainer = "ziocroc@gmail.com";
        author = "Luca Prezzavento";
        homepage = "https://github.com/ziocroc/Ombra";
        url = "";
        synopsis = "Render engine.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ombra" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.Boolean
            hsPkgs.vector-space
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.hashtables
            hsPkgs.MemoTrie
          ] ++ pkgs.lib.optional (_flags.opengl && !_flags.webgl) hsPkgs.gl) ++ pkgs.lib.optional _flags.webgl hsPkgs.ghcjs-base;
        };
      };
    }