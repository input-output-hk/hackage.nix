{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "nanocurses";
          version = "1.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Don Stewart <dons@galois.com>, John Meacham <john@repetae.net>";
        homepage = "http://www.cse.unsw.edu.au/~dons/hmp3.html";
        url = "";
        synopsis = "Simple Curses binding";
        description = "This is a simple binding to the Curses library, a common\nUnix library which allows you to use a terminal as a\ncanvas on which your paint are characters (instead of line\nby line output); Curses is probably most useful for rogue-like\ninterfaces.\n\nNanocurses differs from Hscurses and Mage in that it is\nintended to be portable to Curses libraries other than Ncurses, such\nas Ocurses, Irix's curses, and so on. So it may not have all their features.\n(It does not differ significantly from Hmp3's Curses binding, as the Curses.hsc\nin Nanocurses is essentially extracted from Hmp3.)";
        buildType = "Simple";
      };
      components = {
        "nanocurses" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.bytestring
          ];
          libs = [ pkgs.curses ];
        };
      };
    }