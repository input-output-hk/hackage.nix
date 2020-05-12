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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gstreamer"; version = "0.12.1.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gstreamer-0.10" or (errorHandler.pkgConfDepError "gstreamer-0.10"))
          (pkgconfPkgs."gstreamer-audio-0.10" or (errorHandler.pkgConfDepError "gstreamer-audio-0.10"))
          (pkgconfPkgs."gstreamer-base-0.10" or (errorHandler.pkgConfDepError "gstreamer-base-0.10"))
          (pkgconfPkgs."gstreamer-controller-0.10" or (errorHandler.pkgConfDepError "gstreamer-controller-0.10"))
          (pkgconfPkgs."gstreamer-dataprotocol-0.10" or (errorHandler.pkgConfDepError "gstreamer-dataprotocol-0.10"))
          (pkgconfPkgs."gstreamer-net-0.10" or (errorHandler.pkgConfDepError "gstreamer-net-0.10"))
          (pkgconfPkgs."gstreamer-plugins-base-0.10" or (errorHandler.pkgConfDepError "gstreamer-plugins-base-0.10"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator")))
          ];
        buildable = true;
        };
      };
    }