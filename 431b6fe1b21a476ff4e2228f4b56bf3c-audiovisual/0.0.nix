{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "audiovisual";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/audiovisual";
        url = "";
        synopsis = "A battery-included audiovisual framework";
        description = "Types and utilities for audio and graphic stuff";
        buildType = "Simple";
      };
      components = {
        audiovisual = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.linear
            hsPkgs.objective
            hsPkgs.free
            hsPkgs.colors
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.freetype2
            hsPkgs.hashable
            hsPkgs.random
            hsPkgs.boundingboxes
            hsPkgs.JuicyPixels-util
            hsPkgs.JuicyPixels
            hsPkgs.vector
            hsPkgs.lens
            hsPkgs.void
            hsPkgs.transformers
            hsPkgs.WAVE
          ];
        };
      };
    }