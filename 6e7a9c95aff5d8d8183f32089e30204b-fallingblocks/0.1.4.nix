{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fallingblocks";
          version = "0.1.4";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2009 by Ben Sanders";
        maintainer = "Ben Sanders <bwsanders@gmail.com>";
        author = "Ben Sanders";
        homepage = "http://bencode.blogspot.com/2009/03/falling-blocks-tetris-clone-in-haskell.html";
        url = "";
        synopsis = "A fun falling blocks game.";
        description = "A game where blocks of different shapes fall down the screen.  If you\neither fill an entire line or get four of the same color in a row,\nthose disappear.  How long can you go before the blocks fill the screen?";
        buildType = "Simple";
      };
      components = {
        exes = {
          "fallingblocks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.SDL-ttf
              hsPkgs.SDL-mixer
            ];
          };
        };
      };
    }