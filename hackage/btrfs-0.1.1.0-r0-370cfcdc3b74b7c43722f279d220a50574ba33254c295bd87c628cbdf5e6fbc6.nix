{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "btrfs";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/hs-btrfs";
      url = "";
      synopsis = "Bindings to the btrfs API";
      description = "This package provides low-level bindings to the btrfs API (i.e. the\n@BTRFS_IOC_@* @ioctl@s). Currently, only a subset of the API is\nsupported, including functions needed to work with subvolumes/snapshots\nas well as file cloning.\n\nIn order to build this package, @linux-headers@ need to be installed.\n\nWarning: btrfs is still considered experimental. This module is also\nexperimental and may contain serious bugs that may result in data loss.\nDo not use it on data that has not been backed up yet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.time)
          (hsPkgs.bytestring)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "btrfs-defrag" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.btrfs)
            (hsPkgs.unix)
            (hsPkgs.filepath)
          ];
        };
        "btrfs-clone-range" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.btrfs)
          ];
        };
        "btrfs-list-subvols" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.btrfs)
          ];
        };
      };
    };
  }