{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hback";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
        author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
        homepage = "http://hback.googlecode.com/";
        url = "";
        synopsis = "N-back memory game";
        description = "N-back memory game using gtk2hs.\n\nInstructions on installation and gameplay available at:\n<http://hback.googlecode.com/>";
        buildType = "Simple";
      };
      components = {
        exes = {
          hback = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.glade
              hsPkgs.gtk
              hsPkgs.cairo
              hsPkgs.svgcairo
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.unix
                hsPkgs.time
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }