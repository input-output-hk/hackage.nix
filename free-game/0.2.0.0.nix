{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "free-game";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/free-game";
        url = "";
        synopsis = "Create graphical applications for free.";
        description = "Create something graphical with useful free monads.\n\n/Small instruction/\n\n* load your image by loadBitmapFromFile, embedIO, and loadPicture.\n\n* describe an application using drawPicture, askInput, tick, and so on, in Game monad.\n\n* apply `runGame defaultGameParam` to run.\n\n* That's all!\n\nIn windows, free-game requires DXFI.dll. You can obtain it from <http://botis.org/shared/dist/DXFI-0.2.dll>.";
        buildType = "Simple";
      };
      components = {
        free-game = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.random
            hsPkgs.repa
            hsPkgs.JuicyPixels-repa
            hsPkgs.array
            hsPkgs.filepath
            hsPkgs.parallel-io
            hsPkgs.stb-truetype
          ];
        };
      };
    }