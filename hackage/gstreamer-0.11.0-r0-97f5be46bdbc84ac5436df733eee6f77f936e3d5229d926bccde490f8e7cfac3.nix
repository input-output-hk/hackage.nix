let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gstreamer"; version = "0.11.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."glib" or (buildDepError "glib"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gstreamer-0.10" or (pkgConfDepError "gstreamer-0.10"))
          (pkgconfPkgs."gstreamer-audio-0.10" or (pkgConfDepError "gstreamer-audio-0.10"))
          (pkgconfPkgs."gstreamer-base-0.10" or (pkgConfDepError "gstreamer-base-0.10"))
          (pkgconfPkgs."gstreamer-controller-0.10" or (pkgConfDepError "gstreamer-controller-0.10"))
          (pkgconfPkgs."gstreamer-dataprotocol-0.10" or (pkgConfDepError "gstreamer-dataprotocol-0.10"))
          (pkgconfPkgs."gstreamer-net-0.10" or (pkgConfDepError "gstreamer-net-0.10"))
          (pkgconfPkgs."gstreamer-plugins-base-0.10" or (pkgConfDepError "gstreamer-plugins-base-0.10"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (buildToolDepError "gtk2hsTypeGen")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (buildToolDepError "gtk2hsHookGenerator")))
          ];
        buildable = true;
        };
      };
    }