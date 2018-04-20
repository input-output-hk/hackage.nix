{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fullstop";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eric Kow <E.Y.Kow@brighton.ac.uk>";
        author = "Eric Kow";
        homepage = "http://patch-tag.com/r/kowey/fullstop";
        url = "";
        synopsis = "Simple sentence segmenter";
        description = "FullStop splits texts into sentences, using some orthographical\nconventions (used in English and hopefully other languages).\n\nIt recognises certain punctuation characters as sentence\ndelimiters (@.?!@) and handles some abbreviations such as\n@Mr.@ and decimal numbers (eg. @4.2@).\n\nNote that this package is mostly a placeholder.  I hope\nthe Haskell/NLP communities will run with it and upload\na more sophisticated (family of) segmenter(s) in its\nplace.  Patches (and new maintainers) would be greeted\nwith delight!";
        buildType = "Custom";
      };
      components = {
        fullstop = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
            hsPkgs.split
          ];
        };
        exes = {
          fullstop = {};
          hstest-fullstop = {};
        };
      };
    }