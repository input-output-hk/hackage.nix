{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "xmobar"; version = "0.20.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jose A. Ortega Ruiz <jao@gnu.org>";
      author = "Andrea Rossato, Jose A. Ortega Ruiz";
      homepage = "http://projects.haskell.org/xmobar/";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar\nfeatures, like dynamic color management, output templates,\nand extensibility through plugins.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = ((((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ] ++ (pkgs.lib).optionals (flags.with_xft || flags.all_extensions) [
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."X11-xft" or ((hsPkgs.pkgs-errors).buildDepError "X11-xft"))
            ]) ++ (pkgs.lib).optional (flags.with_utf8 || flags.all_extensions) (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.with_inotify || flags.all_extensions) (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))) ++ (pkgs.lib).optional (flags.with_mpd || flags.all_extensions) (hsPkgs."libmpd" or ((hsPkgs.pkgs-errors).buildDepError "libmpd"))) ++ (pkgs.lib).optionals (flags.with_alsa || flags.all_extensions) [
            (hsPkgs."alsa-mixer" or ((hsPkgs.pkgs-errors).buildDepError "alsa-mixer"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            ]) ++ (pkgs.lib).optionals (flags.with_datezone || flags.all_extensions) [
            (hsPkgs."timezone-olson" or ((hsPkgs.pkgs-errors).buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or ((hsPkgs.pkgs-errors).buildDepError "timezone-series"))
            ]) ++ (pkgs.lib).optional (flags.with_mpris || flags.all_extensions) (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))) ++ (pkgs.lib).optional (flags.with_dbus || flags.all_extensions) (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"));
          libs = [
            (pkgs."Xrandr" or ((hsPkgs.pkgs-errors).sysDepError "Xrandr"))
            ] ++ (pkgs.lib).optional (flags.with_iwlib || flags.all_extensions) (pkgs."iw" or ((hsPkgs.pkgs-errors).sysDepError "iw"));
          buildable = true;
          };
        };
      };
    }