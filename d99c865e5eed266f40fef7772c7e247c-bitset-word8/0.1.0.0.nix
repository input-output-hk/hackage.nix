{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitset-word8";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Naoto Shimazaki";
        maintainer = "Naoto.Shimazaki@gmail.com";
        author = "Naoto Shimazaki";
        homepage = "https://github.com/nshimaza/bitset-word8#readme";
        url = "";
        synopsis = "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP";
        description = "This packaged is intended to provide O(1) membership test on any subset of ASCII\nand Latin-1 character set in order to write efficient HTTP related parser.";
        buildType = "Simple";
      };
      components = {
        bitset-word8 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.th-lift-instances
          ];
        };
        tests = {
          bitset-word8-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bitset-word8
            ];
          };
        };
      };
    }