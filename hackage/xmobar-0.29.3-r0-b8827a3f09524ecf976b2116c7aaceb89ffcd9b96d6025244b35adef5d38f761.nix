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
      with_xpm = false;
      with_threaded = false;
      with_rtsopts = true;
      with_uvmeter = false;
      with_weather = true;
      with_conduit = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "xmobar"; version = "0.29.3"; };
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
      "library" = {
        depends = ((((((((((([
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
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."parsec-numbers" or ((hsPkgs.pkgs-errors).buildDepError "parsec-numbers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0.2") (hsPkgs."unsupported-ghc-version" or ((hsPkgs.pkgs-errors).buildDepError "unsupported-ghc-version"))) ++ (pkgs.lib).optionals (flags.with_xft || flags.all_extensions) [
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."X11-xft" or ((hsPkgs.pkgs-errors).buildDepError "X11-xft"))
          ]) ++ (pkgs.lib).optional (flags.with_utf8 || flags.all_extensions) (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.with_inotify || flags.all_extensions) (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))) ++ (pkgs.lib).optional (flags.with_iwlib || flags.all_extensions) (hsPkgs."iwlib" or ((hsPkgs.pkgs-errors).buildDepError "iwlib"))) ++ (pkgs.lib).optional (flags.with_mpd || flags.all_extensions) (hsPkgs."libmpd" or ((hsPkgs.pkgs-errors).buildDepError "libmpd"))) ++ (pkgs.lib).optionals (flags.with_alsa || flags.all_extensions) [
          (hsPkgs."alsa-mixer" or ((hsPkgs.pkgs-errors).buildDepError "alsa-mixer"))
          (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ]) ++ (pkgs.lib).optionals (flags.with_datezone || flags.all_extensions) [
          (hsPkgs."timezone-olson" or ((hsPkgs.pkgs-errors).buildDepError "timezone-olson"))
          (hsPkgs."timezone-series" or ((hsPkgs.pkgs-errors).buildDepError "timezone-series"))
          ]) ++ (pkgs.lib).optional (flags.with_mpris || flags.all_extensions) (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))) ++ (pkgs.lib).optional (flags.with_dbus || flags.all_extensions) (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))) ++ (pkgs.lib).optionals (flags.with_weather || flags.all_extensions) ([
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          ] ++ (pkgs.lib).optionals (flags.with_conduit) [
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ])) ++ (pkgs.lib).optionals (flags.with_uvmeter && flags.with_conduit) [
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        libs = ([
          (pkgs."Xrandr" or ((hsPkgs.pkgs-errors).sysDepError "Xrandr"))
          (pkgs."Xrender" or ((hsPkgs.pkgs-errors).sysDepError "Xrender"))
          ] ++ (pkgs.lib).optional (flags.with_iwlib || flags.all_extensions) (pkgs."iw" or ((hsPkgs.pkgs-errors).sysDepError "iw"))) ++ (pkgs.lib).optional (flags.with_xpm || flags.all_extensions) (pkgs."Xpm" or ((hsPkgs.pkgs-errors).sysDepError "Xpm"));
        buildable = true;
        };
      exes = {
        "xmobar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."xmobar" or ((hsPkgs.pkgs-errors).buildDepError "xmobar"))
            ];
          buildable = true;
          };
        };
      tests = {
        "XmobarTest" = {
          depends = [
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
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."parsec-numbers" or ((hsPkgs.pkgs-errors).buildDepError "parsec-numbers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."xmobar" or ((hsPkgs.pkgs-errors).buildDepError "xmobar"))
            ] ++ (pkgs.lib).optionals (flags.with_alsa || flags.all_extensions) [
            (hsPkgs."alsa-mixer" or ((hsPkgs.pkgs-errors).buildDepError "alsa-mixer"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }