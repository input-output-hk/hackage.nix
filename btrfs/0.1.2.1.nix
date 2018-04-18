{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "btrfs";
          version = "0.1.2.1";
        };
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
        btrfs = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.bytestring
          ];
        };
        exes = {
          btrfs-defrag = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.btrfs
              hsPkgs.unix
              hsPkgs.filepath
              hsPkgs.linux-file-extents
              hsPkgs.ansi-terminal
            ];
          };
          btrfs-clone-range = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.btrfs
            ];
          };
          btrfs-list-subvols = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.btrfs
            ];
          };
          btrfs-print-creation-time = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.btrfs
              hsPkgs.unix
              hsPkgs.time
            ];
          };
        };
      };
    }