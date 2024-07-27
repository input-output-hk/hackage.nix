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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "btrfs"; version = "0.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/hs-btrfs";
      url = "";
      synopsis = "Bindings to the btrfs API";
      description = "This package provides bindings to the low-level btrfs API (i.e. the\n@BTRFS_IOC_@* @ioctl@s). Currently, only a subset of the API is\nsupported, including all functions needed to work with subvolumes/snapshots\nas well as file cloning.\n\nIn order to build this package, @linux-headers@ needs to be installed.\n\nWarning: btrfs is still considered experimental. This module is also\nexperimental and may contain serious bugs that may result in data loss.\nDo not use it on data that has not been backed up yet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "btrfs-defrag" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."btrfs" or (errorHandler.buildDepError "btrfs"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."linux-file-extents" or (errorHandler.buildDepError "linux-file-extents"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "btrfs-clone-range" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."btrfs" or (errorHandler.buildDepError "btrfs"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "btrfs-split" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."btrfs" or (errorHandler.buildDepError "btrfs"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "btrfs-list-subvols" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."btrfs" or (errorHandler.buildDepError "btrfs"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "btrfs-print-creation-time" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."btrfs" or (errorHandler.buildDepError "btrfs"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }