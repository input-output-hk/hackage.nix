{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fullstop";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eric Kow <eric@erickow.com>";
        author = "Eric Kow";
        homepage = "http://hub.darcs.net/kowey/fullstop";
        url = "";
        synopsis = "Simple sentence segmenter";
        description = "FullStop splits texts into sentences, using some orthographical\nconventions (used in English and hopefully other languages).\n\nIt recognises certain punctuation characters as sentence\ndelimiters (@.?!@) and handles some abbreviations such as\n@Mr.@ and decimal numbers (eg. @4.2@).\n\nNote that this package is mostly a placeholder.  I hope\nthe Haskell/NLP communities will run with it and upload\na more sophisticated (family of) segmenter(s) in its\nplace.  Patches (and new maintainers) would be greeted\nwith delight!";
        buildType = "Simple";
      };
      components = {
        fullstop = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
        exes = {
          fullstop = {
            depends  = [
              hsPkgs.base
              hsPkgs.fullstop
            ];
          };
        };
        tests = {
          hstest-fullstop = {
            depends  = [
              hsPkgs.base
              hsPkgs.fullstop
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }