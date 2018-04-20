{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vision";
          version = "0.0.5.0";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2010, 2011 Oleg Belozeorov";
        maintainer = "Oleg Belozeorov <upwawet@gmail.com>";
        author = "Oleg Belozeorov";
        homepage = "";
        url = "";
        synopsis = "An XMMS2 client.";
        description = "Vision (for the Voice) is an X-platform Music Multiplexing System 2\n(http://xmms2.xmms.se) client aiming to eventually fit its author's\nviews on listening to music, managing a music library etc. Only the\ntime can tell what will come of that :]";
        buildType = "Simple";
      };
      components = {
        exes = {
          vision = {
            depends  = [
              hsPkgs.base
              hsPkgs.xmms2-client
              hsPkgs.xmms2-client-glib
              hsPkgs.gtk
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.utf8-string
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.glib
              hsPkgs.array
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.json
              hsPkgs.parsec
              hsPkgs.url
              hsPkgs.stm
              hsPkgs.PSQueue
            ];
          };
        };
      };
    }