{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      small_base = true;
      with_xft = false;
      with_utf8 = true;
      with_inotify = false;
      with_iwlib = false;
      with_mpd = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmobar"; version = "0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/~arossato/xmobar";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar features,\nlike dynamic color management, output templates, and extensibility\nthrough plugins.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = (((([
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.time)
            ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.process)
              (hsPkgs.old-time)
              (hsPkgs.old-locale)
              (hsPkgs.bytestring)
              (hsPkgs.directory)
              ]
            else [ (hsPkgs.base) ])) ++ (pkgs.lib).optionals (flags.with_xft) [
            (hsPkgs.utf8-string)
            (hsPkgs.X11-xft)
            ]) ++ (pkgs.lib).optional (flags.with_utf8) (hsPkgs.utf8-string)) ++ (pkgs.lib).optional (flags.with_inotify) (hsPkgs.hinotify)) ++ (pkgs.lib).optional (flags.with_mpd) (hsPkgs.libmpd);
          libs = (pkgs.lib).optional (flags.with_iwlib) (pkgs."iw");
          };
        };
      };
    }