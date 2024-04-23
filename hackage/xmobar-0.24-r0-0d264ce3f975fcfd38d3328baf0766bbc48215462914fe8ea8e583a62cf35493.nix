{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
      with_xpm = false;
      with_threaded = false;
      with_uvmeter = false;
      with_conduit = false;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmobar"; version = "0.24"; };
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
          depends = (((((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ] ++ pkgs.lib.optionals (flags.with_conduit) [
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ]) ++ pkgs.lib.optionals (flags.with_xft || flags.all_extensions) [
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"))
          ]) ++ pkgs.lib.optional (flags.with_utf8 || flags.all_extensions) (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))) ++ pkgs.lib.optional (flags.with_inotify || flags.all_extensions) (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))) ++ pkgs.lib.optional (flags.with_mpd || flags.all_extensions) (hsPkgs."libmpd" or (errorHandler.buildDepError "libmpd"))) ++ pkgs.lib.optionals (flags.with_alsa || flags.all_extensions) [
            (hsPkgs."alsa-mixer" or (errorHandler.buildDepError "alsa-mixer"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
          ]) ++ pkgs.lib.optionals (flags.with_datezone || flags.all_extensions) [
            (hsPkgs."timezone-olson" or (errorHandler.buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
          ]) ++ pkgs.lib.optional (flags.with_mpris || flags.all_extensions) (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))) ++ pkgs.lib.optional (flags.with_dbus || flags.all_extensions) (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"));
          libs = ([
            (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
            (pkgs."Xrender" or (errorHandler.sysDepError "Xrender"))
          ] ++ pkgs.lib.optional (flags.with_iwlib || flags.all_extensions) (pkgs."iw" or (errorHandler.sysDepError "iw"))) ++ pkgs.lib.optional (flags.with_xpm || flags.all_extensions) (pkgs."Xpm" or (errorHandler.sysDepError "Xpm"));
          buildable = true;
        };
      };
    };
  }