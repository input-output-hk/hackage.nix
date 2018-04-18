{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      with_xft = false;
      with_utf8 = true;
      with_inotify = false;
      with_iwlib = false;
      with_mpd = false;
      all_extensions = false;
      with_alsa = false;
      with_datezone = false;
      with_mpris = false;
      with_dbus = false;
      with_xpm = false;
      with_threaded = false;
      with_uvmeter = false;
      with_conduit = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xmobar";
          version = "0.24";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jose A. Ortega Ruiz <jao@gnu.org>";
        author = "Andrea Rossato and Jose A. Ortega Ruiz";
        homepage = "http://xmobar.org";
        url = "";
        synopsis = "A Minimalistic Text Based Status Bar";
        description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar\nfeatures, like dynamic color management, output templates,\nand extensibility through plugins.";
        buildType = "Simple";
      };
      components = {
        exes = {
          xmobar = {
            depends  = (((((((([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.regex-compat
              hsPkgs.process
              hsPkgs.old-locale
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.unix
              hsPkgs.time
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.X11
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.HTTP
              hsPkgs.stm
            ] ++ optionals _flags.with_conduit [
              hsPkgs.http-conduit
              hsPkgs.http-types
            ]) ++ optionals (_flags.with_xft || _flags.all_extensions) [
              hsPkgs.utf8-string
              hsPkgs.X11-xft
            ]) ++ pkgs.lib.optional (_flags.with_utf8 || _flags.all_extensions) hsPkgs.utf8-string) ++ pkgs.lib.optional (_flags.with_inotify || _flags.all_extensions) hsPkgs.hinotify) ++ pkgs.lib.optional (_flags.with_mpd || _flags.all_extensions) hsPkgs.libmpd) ++ optionals (_flags.with_alsa || _flags.all_extensions) [
              hsPkgs.alsa-mixer
              hsPkgs.alsa-core
            ]) ++ optionals (_flags.with_datezone || _flags.all_extensions) [
              hsPkgs.timezone-olson
              hsPkgs.timezone-series
            ]) ++ pkgs.lib.optional (_flags.with_mpris || _flags.all_extensions) hsPkgs.dbus) ++ pkgs.lib.optional (_flags.with_dbus || _flags.all_extensions) hsPkgs.dbus;
            libs = ([
              pkgs.Xrandr
              pkgs.Xrender
            ] ++ pkgs.lib.optional (_flags.with_iwlib || _flags.all_extensions) pkgs.iw) ++ pkgs.lib.optional (_flags.with_xpm || _flags.all_extensions) pkgs.Xpm;
          };
        };
      };
    }