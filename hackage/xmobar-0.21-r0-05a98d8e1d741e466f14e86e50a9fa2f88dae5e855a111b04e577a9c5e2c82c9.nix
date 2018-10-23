{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
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
      with_threaded = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "xmobar";
        version = "0.21";
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
        "xmobar" = {
          depends  = ((((((([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.process)
            (hsPkgs.old-locale)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.HTTP)
            (hsPkgs.stm)
          ] ++ pkgs.lib.optionals (flags.with_xft || flags.all_extensions) [
            (hsPkgs.utf8-string)
            (hsPkgs.X11-xft)
          ]) ++ pkgs.lib.optional (flags.with_utf8 || flags.all_extensions) (hsPkgs.utf8-string)) ++ pkgs.lib.optional (flags.with_inotify || flags.all_extensions) (hsPkgs.hinotify)) ++ pkgs.lib.optional (flags.with_mpd || flags.all_extensions) (hsPkgs.libmpd)) ++ pkgs.lib.optionals (flags.with_alsa || flags.all_extensions) [
            (hsPkgs.alsa-mixer)
            (hsPkgs.alsa-core)
          ]) ++ pkgs.lib.optionals (flags.with_datezone || flags.all_extensions) [
            (hsPkgs.timezone-olson)
            (hsPkgs.timezone-series)
          ]) ++ pkgs.lib.optional (flags.with_mpris || flags.all_extensions) (hsPkgs.dbus)) ++ pkgs.lib.optional (flags.with_dbus || flags.all_extensions) (hsPkgs.dbus);
          libs = [
            (pkgs."Xrandr")
          ] ++ pkgs.lib.optional (flags.with_iwlib || flags.all_extensions) (pkgs."iw");
        };
      };
    };
  }