{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vhd";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Citrix Systems Inc.";
        maintainer = "vincent.hanquez@citrix.com";
        author = "Jonathan Knowles, Vincent Hanquez";
        homepage = "https://github.com/vincenthz/hs-vhd";
        url = "";
        synopsis = "Provides functions to inspect and manipulate virtual hard disk (VHD) files.";
        description = "Provides functions to inspect and manipulate virtual hard disk (VHD) files, according to the VHD specification (version 1.0).";
        buildType = "Simple";
      };
      components = {
        "vhd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.mmap
            hsPkgs.text
            hsPkgs.time
            hsPkgs.cereal
            hsPkgs.random
            hsPkgs.storable-endian
            hsPkgs.cipher-aes
            hsPkgs.cryptohash
          ];
        };
        exes = {
          "vhd" = {
            depends  = pkgs.lib.optionals _flags.executable [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.mmap
              hsPkgs.text
              hsPkgs.time
              hsPkgs.cereal
              hsPkgs.random
              hsPkgs.storable-endian
              hsPkgs.vhd
              hsPkgs.cipher-aes
              hsPkgs.cryptohash
            ];
          };
        };
        tests = {
          "test-vhd" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.byteable
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.mmap
              hsPkgs.text
              hsPkgs.time
              hsPkgs.cereal
              hsPkgs.random
              hsPkgs.vhd
              hsPkgs.cryptohash
            ];
          };
        };
      };
    }