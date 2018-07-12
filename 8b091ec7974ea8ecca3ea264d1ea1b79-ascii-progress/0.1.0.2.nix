{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ascii-progress";
          version = "0.1.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "(c) 2015 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/haskell-ascii-progress";
        url = "";
        synopsis = "A simple progress bar for the console.";
        description = "A simple Haskell progress bar for the console. Heavily borrows from TJ\nHolowaychuk's Node.JS project <https://github.com/tj/node-progress progress>\n@@@\nimport Control.Concurrent (threadDelay)\nimport Control.Monad (unless)\nimport System.Console.AsciiProgress (Options(..), isComplete, def,\nnewProgressBar, tick)\nmain :: IO ()\nmain = do\npg <- newProgressBar def { pgWidth = 50 }\nloop pg\nwhere\nloop pg = do\nb <- isComplete pg\nunless b \$ do\nthreadDelay \$ 200 * 1000\ntick pg\nloop pg\n@@@\n<https://github.com/yamadapc/haskell-ascii-progress github>";
        buildType = "Simple";
      };
      components = {
        "ascii-progress" = {
          depends  = [
            hsPkgs.MissingH
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.time
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.MissingH
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.time
            ];
          };
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.MissingH
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.hspec
              hsPkgs.time
            ];
          };
        };
      };
    }