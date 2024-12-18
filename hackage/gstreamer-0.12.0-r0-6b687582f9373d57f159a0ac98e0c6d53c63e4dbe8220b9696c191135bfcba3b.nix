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
      specVersion = "1.6";
      identifier = { name = "gstreamer"; version = "0.12.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Peter Gavin, Axel Simon";
      homepage = "http://www.haskell.org/gtk2hs/";
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
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
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
          (hsPkgs.pkgsBuildBuild.gtk2hsC2hs.components.exes.gtk2hsC2hs or (pkgs.pkgsBuildBuild.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs:gtk2hsC2hs")))
          (hsPkgs.pkgsBuildBuild.gtk2hsTypeGen.components.exes.gtk2hsTypeGen or (pkgs.pkgsBuildBuild.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen:gtk2hsTypeGen")))
          (hsPkgs.pkgsBuildBuild.gtk2hsHookGenerator.components.exes.gtk2hsHookGenerator or (pkgs.pkgsBuildBuild.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator:gtk2hsHookGenerator")))
        ];
        buildable = true;
      };
    };
  }