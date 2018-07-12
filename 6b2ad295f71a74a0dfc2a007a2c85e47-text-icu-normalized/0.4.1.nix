{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "text-icu-normalized";
          version = "0.4.1";
        };
        license = "GPL-3.0-only";
        copyright = "©2016 Evan Cofsky";
        maintainer = "evan@theunixman.com";
        author = "Evan Cofsky";
        homepage = "https://www.lambdanow.us/browser/text-icu-normalized";
        url = "";
        synopsis = "Dealing with Strict Text in NFC normalization.";
        description = "Handle Text in NFC normalization.";
        buildType = "Simple";
      };
      components = {
        "text-icu-normalized" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.text-icu
          ];
        };
        tests = {
          "test-normalizations" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.base-unicode-symbols
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.lens
              hsPkgs.parsec
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.text
              hsPkgs.text-icu
              hsPkgs.text-icu-normalized
            ];
          };
        };
      };
    }