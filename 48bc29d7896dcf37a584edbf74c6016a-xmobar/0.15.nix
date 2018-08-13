{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
      with_xft = false;
      with_utf8 = true;
      with_inotify = false;
      with_iwlib = false;
      with_mpd = false;
      all_extensions = false;
      with_alsa = false;
      with_datezone = false;
      with_mpris = false;
      with_threaded = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "xmobar";
        version = "0.15";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jose A. Ortega Ruiz <jao@gnu.org>";
      author = "Andrea Rossato";
      homepage = "http://projects.haskell.org/xmobar/";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar\nfeatures, like dynamic color management, output templates,\nand extensibility through plugins.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "xmobar" = {
          depends  = ((((((([
            (hsPkgs.unix)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.stm)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.process)
              (hsPkgs.old-locale)
              (hsPkgs.bytestring)
              (hsPkgs.directory)
            ]
            else [
              (hsPkgs.base)
            ])) ++ pkgs.lib.optionals (_flags.with_xft || _flags.all_extensions) [
            (hsPkgs.utf8-string)
            (hsPkgs.X11-xft)
          ]) ++ pkgs.lib.optional (_flags.with_utf8 || _flags.all_extensions) (hsPkgs.utf8-string)) ++ pkgs.lib.optional (_flags.with_inotify || _flags.all_extensions) (hsPkgs.hinotify)) ++ pkgs.lib.optional (_flags.with_mpd || _flags.all_extensions) (hsPkgs.libmpd)) ++ pkgs.lib.optionals (_flags.with_alsa || _flags.all_extensions) [
            (hsPkgs.alsa-mixer)
            (hsPkgs.alsa-core)
          ]) ++ pkgs.lib.optionals (_flags.with_datezone || _flags.all_extensions) [
            (hsPkgs.timezone-olson)
            (hsPkgs.timezone-series)
          ]) ++ pkgs.lib.optionals (_flags.with_mpris || _flags.all_extensions) [
            (hsPkgs.dbus-core)
            (hsPkgs.text)
          ];
          libs = pkgs.lib.optional true (pkgs.Xrandr) ++ pkgs.lib.optional (_flags.with_iwlib || _flags.all_extensions) (pkgs.iw);
        };
      };
    };
  }