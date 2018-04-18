{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "movie-monad";
          version = "0.0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 David Lettier";
        maintainer = "Lettier";
        author = "Lettier";
        homepage = "https://github.com/lettier/movie-monad";
        url = "";
        synopsis = "Plays videos using GStreamer and GTK+.";
        description = "A free and simple to use video player built with Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          movie-monad = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.system-fileio
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.time
              hsPkgs.process
              hsPkgs.MissingH
              hsPkgs.network-uri
              hsPkgs.haskell-gi
              hsPkgs.haskell-gi-base
              hsPkgs.gi-gobject
              hsPkgs.gi-glib
              hsPkgs.gi-gdk
              hsPkgs.gi-gdkpixbuf
              hsPkgs.gi-gst
              hsPkgs.gi-gstvideo
              hsPkgs.gi-gtk
            ];
          };
        };
      };
    }