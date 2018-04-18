{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gstreamer";
          version = "0.12.1.2";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@lists.sourceforge.net";
        author = "Peter Gavin, Axel Simon";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the GStreamer open source multimedia framework.";
        description = "This package provides a wrapper around the GStreamer C library. GStreamer is a library\nfor constructing graphs of media-handling components. The applications it supports\nrange from simple Ogg/Vorbis playback, audio/video streaming to complex audio\n(mixing) and video (non-linear editing) processing.";
        buildType = "Custom";
      };
      components = {
        gstreamer = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.glib
          ];
        };
      };
    }