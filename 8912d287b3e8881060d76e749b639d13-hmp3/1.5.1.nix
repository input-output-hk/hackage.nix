{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmp3";
          version = "1.5.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://www.cse.unsw.edu.au/~dons/hmp3.html";
        url = "";
        synopsis = "An ncurses mp3 player written in Haskell";
        description = "An mp3 player with a curses frontend. Playlists are populated by\npassing directory names on the commandline, and saved to the\n~/.hmp3db database. Type 'h' to display the help page.  Colours may\nbe configured at runtime by editing the \"~/.hmp3\" file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hmp3 = {
            depends  = [
              hsPkgs.unix
              hsPkgs.zlib
              hsPkgs.binary
              hsPkgs.pcre-light
              hsPkgs.mersenne-random
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.bytestring
                hsPkgs.containers
                hsPkgs.array
                hsPkgs.old-time
                hsPkgs.directory
                hsPkgs.process
              ]
              else [ hsPkgs.base ]);
            libs = [ pkgs.curses ];
          };
        };
      };
    }