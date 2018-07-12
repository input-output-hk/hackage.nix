{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      integer-simple = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "text-utf8";
          version = "1.2.3.0";
        };
        license = "BSD-2-Clause";
        copyright = "2009-2011 Bryan O'Sullivan, 2008-2009 Tom Harper";
        maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/text-utf8";
        url = "";
        synopsis = "An efficient packed UTF-8 backed Unicode text type.";
        description = "\nAn efficient packed, immutable UTF-8 backed Unicode text type (both strict and\nlazy), with a powerful loop fusion optimization framework.\n\nThe 'Text' type represents Unicode character strings, in a time and\nspace-efficient manner. This package provides text processing\ncapabilities that are optimized for performance critical use, both\nin terms of large data quantities and high speed.\n\nThe 'Text' type provides character-encoding, type-safe case\nconversion via whole-string case conversion functions (see \"Data.Text\").\nIt also provides a range of functions for converting 'Text' values to\nand from 'ByteStrings', using several standard encodings\n(see \"Data.Text.Encoding\").\n\nEfficient locale-sensitive support for text IO is also supported\n(see \"Data.Text.IO\").\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with Prelude functions, e.g.\n\n> import qualified Data.Text as T\n\n== Relationship to the standard text package\n\nThis is a fork of the [text](https://hackage.haskell.org/package/text)\npackage ported which uses UTF-8 instead of UTF-16 as its internal\nrepresentation.\n\nThis release is intended to be API compatible with the @text-1.2.3.0@ release.\n\nAnother package providing an UTF-8 backed Text type with a diffferent cost-model\nis the [text-short](https://hackage.haskell.org/package/text-short) package.";
        buildType = "Simple";
      };
      components = {
        "text-utf8" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.bytestring
          ] ++ (if _flags.integer-simple
            then [ hsPkgs.integer-simple ]
            else [ hsPkgs.integer-gmp ]);
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.ghc-prim
              hsPkgs.quickcheck-unicode
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