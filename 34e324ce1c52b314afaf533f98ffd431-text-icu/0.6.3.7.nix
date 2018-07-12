{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-icu";
          version = "0.6.3.7";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2013 Bryan O'Sullivan";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "";
        homepage = "https://github.com/bos/text-icu";
        url = "";
        synopsis = "Bindings to the ICU library";
        description = "Haskell bindings to the International Components for Unicode (ICU)\nlibraries.  These libraries provide robust and full-featured Unicode\nservices on a wide variety of platforms.\n\nFeatures include:\n\n* Both pure and impure bindings, to allow for fine control over efficiency\nand ease of use.\n\n* Breaking of strings on character, word, sentence, and line boundaries.\n\n* Access to the Unicode Character Database (UCD) of character metadata.\n\n* String collation functions, for locales where the conventions for\nlexicographic ordering differ from the simple numeric ordering of\ncharacter codes.\n\n* Character set conversion functions, allowing conversion between\nUnicode and over 220 character encodings.\n\n* Unicode normalization.  (When implementations keep strings in a\nnormalized form, they can be assured that equivalent strings have a\nunique binary representation.)\n\n* Regular expression search and replace.";
        buildType = "Simple";
      };
      components = {
        "text-icu" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
          libs = [
            pkgs.icuuc
          ] ++ (if system.isWindows
            then [ pkgs.icuin pkgs.icudt ]
            else [
              pkgs.icui18n
              pkgs.icudata
            ]);
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.ghc-prim
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.text-icu
            ];
          };
        };
      };
    }