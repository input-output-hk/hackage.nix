{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hmp3";
        version = "1.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hmp3";
      url = "";
      synopsis = "An ncurses mp3 player written in Haskell";
      description = "An mp3 player with a curses frontend. Playlists are populated by\npassing directory names on the commandline, and saved to the\n~/.hmp3db database. Type 'h' to display the help page.  Colours may\nbe configured at runtime by editing the \"~/.hmp3\" file.\n";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hmp3" = {
          depends  = [
            (hsPkgs.unix)
            (hsPkgs.binary)
            (hsPkgs.pcre-light)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.bytestring)
              (hsPkgs.containers)
              (hsPkgs.array)
              (hsPkgs.old-time)
              (hsPkgs.directory)
              (hsPkgs.process)
              (hsPkgs.random)
            ]
            else [ (hsPkgs.base) ]);
          libs = [ (pkgs."curses") ];
        };
      };
    };
  }