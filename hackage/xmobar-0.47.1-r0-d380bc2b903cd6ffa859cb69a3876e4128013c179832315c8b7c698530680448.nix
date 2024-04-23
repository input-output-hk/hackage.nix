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
      with_xrender = true;
      with_inotify = false;
      with_iwlib = false;
      with_nl80211 = false;
      with_mpd = false;
      all_extensions = false;
      with_alsa = false;
      with_datezone = false;
      with_mpris = false;
      with_dbus = false;
      with_xpm = false;
      with_threaded = false;
      with_rtsopts = true;
      with_weather = true;
      with_uvmeter = false;
      with_kraken = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "xmobar"; version = "0.47.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jose A. Ortega Ruiz <jao@gnu.org>";
      author = "Andrea Rossato and Jose A. Ortega Ruiz";
      homepage = "https://codeberg.org/xmobar/xmobar";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar\nfeatures, like dynamic color management, output templates,\nand extensibility through plugins.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((((((((((((([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."pango" or (errorHandler.buildDepError "pango"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parsec-numbers" or (errorHandler.buildDepError "parsec-numbers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0.2") (hsPkgs."unsupported-ghc-version" or (errorHandler.buildDepError "unsupported-ghc-version"))) ++ pkgs.lib.optional (flags.with_xrender) (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"))) ++ pkgs.lib.optional (flags.with_inotify || flags.all_extensions) (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))) ++ pkgs.lib.optional (flags.with_iwlib) (hsPkgs."iwlib" or (errorHandler.buildDepError "iwlib"))) ++ pkgs.lib.optionals (!flags.with_iwlib && (flags.with_nl80211 || flags.all_extensions)) [
          (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ]) ++ pkgs.lib.optional (flags.with_mpd || flags.all_extensions && (compiler.isGhc && compiler.version.lt "9.4")) (hsPkgs."libmpd" or (errorHandler.buildDepError "libmpd"))) ++ pkgs.lib.optionals (flags.with_alsa || flags.all_extensions) [
          (hsPkgs."alsa-mixer" or (errorHandler.buildDepError "alsa-mixer"))
          (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ]) ++ pkgs.lib.optionals (flags.with_datezone || flags.all_extensions) [
          (hsPkgs."timezone-olson" or (errorHandler.buildDepError "timezone-olson"))
          (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
        ]) ++ pkgs.lib.optional (flags.with_mpris || flags.all_extensions) (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))) ++ pkgs.lib.optional (flags.with_dbus || flags.all_extensions) (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))) ++ pkgs.lib.optionals (flags.with_weather || flags.all_extensions) [
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
        ]) ++ pkgs.lib.optionals (flags.with_uvmeter) [
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ]) ++ pkgs.lib.optionals (flags.with_kraken) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ]) ++ pkgs.lib.optional (system.isFreebsd) (hsPkgs."bsd-sysctl" or (errorHandler.buildDepError "bsd-sysctl"));
        libs = (([
          (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
          (pkgs."Xrender" or (errorHandler.sysDepError "Xrender"))
        ] ++ pkgs.lib.optional (flags.with_iwlib) (pkgs."iw" or (errorHandler.sysDepError "iw"))) ++ pkgs.lib.optional (flags.with_xpm || flags.all_extensions) (pkgs."Xpm" or (errorHandler.sysDepError "Xpm"))) ++ pkgs.lib.optionals (system.isFreebsd) [
          (pkgs."procstat" or (errorHandler.sysDepError "procstat"))
          (pkgs."kvm" or (errorHandler.sysDepError "kvm"))
          (pkgs."geom" or (errorHandler.sysDepError "geom"))
        ];
        buildable = true;
      };
      exes = {
        "xmobar" = {
          depends = [
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
          ];
          buildable = true;
        };
      };
      tests = {
        "XmobarTest" = {
          depends = ([
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."parsec-numbers" or (errorHandler.buildDepError "parsec-numbers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
          ] ++ pkgs.lib.optionals (flags.with_alsa || flags.all_extensions) [
            (hsPkgs."alsa-mixer" or (errorHandler.buildDepError "alsa-mixer"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ]) ++ pkgs.lib.optional (system.isFreebsd) (hsPkgs."bsd-sysctl" or (errorHandler.buildDepError "bsd-sysctl"));
          buildable = true;
        };
      };
      benchmarks = {
        "xmobarbench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xmobar" or (errorHandler.buildDepError "xmobar"))
          ];
          buildable = true;
        };
      };
    };
  }