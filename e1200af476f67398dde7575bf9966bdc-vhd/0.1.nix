{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      executable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vhd";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Citrix Systems Inc.";
        maintainer = "jonathan.knowles@eu.citrix.com";
        author = "Jonathan Knowles, Vincent Hanquez";
        homepage = "https://github.com/jonathanknowles/hs-vhd";
        url = "";
        synopsis = "Implementation of the Virtual Hard Disk (VHD) disk format";
        description = "Provide a toolbox of function to manipulate VHD files.";
        buildType = "Simple";
      };
      components = {
        vhd = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mmap
            hsPkgs.text
            hsPkgs.time
            hsPkgs.cereal
            hsPkgs.random
            hsPkgs.storable-endian
          ];
        };
        exes = {
          Tests = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
          vhd = {
            depends  = pkgs.lib.optional _flags.executable hsPkgs.base;
          };
        };
      };
    }