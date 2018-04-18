{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      integer-simple = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2011 Bryan O'Sullivan, 2008-2009 Tom Harper";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/text";
        url = "";
        synopsis = "An efficient packed Unicode text type.";
        description = "\nAn efficient packed, immutable Unicode text type (both strict and\nlazy), with a powerful loop fusion optimization framework.\n\nThe 'Text' type represents Unicode character strings, in a time and\nspace-efficient manner. This package provides text processing\ncapabilities that are optimized for performance critical use, both\nin terms of large data quantities and high speed.\n\nThe 'Text' type provides character-encoding, type-safe case\nconversion via whole-string case conversion functions. It also\nprovides a range of functions for converting 'Text' values to and from\n'ByteStrings', using several standard encodings.\n\nEfficient locale-sensitive support for text IO is also supported.\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with Prelude functions, e.g.\n\n> import qualified Data.Text as T\n\nTo use an extended and very rich family of functions for working\nwith Unicode text (including normalization, regular expressions,\nnon-standard encodings, text breaking, and locales), see\nthe @text-icu@ package:\n<http://hackage.haskell.org/package/text-icu>";
        buildType = "Simple";
      };
      components = {
        text = {
          depends  = ([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.ghc-prim
          ] ++ [
            hsPkgs.bytestring
          ]) ++ (if _flags.integer-simple
            then [ hsPkgs.integer-simple ]
            else [ hsPkgs.integer-gmp ]);
        };
        tests = {
          tests = {
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
            ] ++ (if _flags.integer-simple
              then [ hsPkgs.integer-simple ]
              else [ hsPkgs.integer-gmp ]);
          };
        };
      };
    }