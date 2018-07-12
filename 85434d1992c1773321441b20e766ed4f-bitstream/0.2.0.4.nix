{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitstream";
          version = "0.2.0.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "https://github.com/phonohawk/bitstream";
        url = "";
        synopsis = "Fast, packed, strict and lazy bit streams with stream fusion";
        description = "Fast, packed, strict and lazy bit vectors with stream\nfusion. This is like @bytestring@ but stores bits instead of\nbytes.";
        buildType = "Simple";
      };
      components = {
        "bitstream" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
        tests = {
          "test-strict-bitstream" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.bytestring
              hsPkgs.vector
            ];
          };
          "test-lazy-bitstream" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.bytestring
              hsPkgs.vector
            ];
          };
        };
      };
    }