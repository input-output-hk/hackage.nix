{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hback";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
        author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
        homepage = "http://pithyless.com/blog/2008/05/18/hback-haskell-n-back-memory-game/";
        url = "";
        synopsis = "N-back memory game";
        description = "N-back memory game using gtk2hs.\n\nInstructions on installation and gameplay available at:\n<http://pithyless.com/blog/2008/05/18/hback-haskell-n-back-memory-game/>";
        buildType = "Simple";
      };
      components = {
        exes = {
          hback = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.process
              hsPkgs.glade
              hsPkgs.gtk
              hsPkgs.cairo
            ];
          };
        };
      };
    }