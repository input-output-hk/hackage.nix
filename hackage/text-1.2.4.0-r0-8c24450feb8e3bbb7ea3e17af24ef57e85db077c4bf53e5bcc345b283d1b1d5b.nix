{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      bytestring-builder = false;
      developer = false;
      integer-simple = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "text"; version = "1.2.4.0"; };
      license = "BSD-2-Clause";
      copyright = "2009-2011 Bryan O'Sullivan, 2008-2009 Tom Harper";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/haskell/text";
      url = "";
      synopsis = "An efficient packed Unicode text type.";
      description = "\nAn efficient packed, immutable Unicode text type (both strict and\nlazy), with a powerful loop fusion optimization framework.\n\nThe 'Text' type represents Unicode character strings, in a time and\nspace-efficient manner. This package provides text processing\ncapabilities that are optimized for performance critical use, both\nin terms of large data quantities and high speed.\n\nThe 'Text' type provides character-encoding, type-safe case\nconversion via whole-string case conversion functions (see \"Data.Text\").\nIt also provides a range of functions for converting 'Text' values to\nand from 'ByteStrings', using several standard encodings\n(see \"Data.Text.Encoding\").\n\nEfficient locale-sensitive support for text IO is also supported\n(see \"Data.Text.IO\").\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with Prelude functions, e.g.\n\n> import qualified Data.Text as T\n\n== ICU Support\n\nTo use an extended and very rich family of functions for working\nwith Unicode text (including normalization, regular expressions,\nnon-standard encodings, text breaking, and locales), see\nthe [text-icu package](https://hackage.haskell.org/package/text-icu)\nbased on the well-respected and liberally\nlicensed [ICU library](http://site.icu-project.org/).\n\n== Internal Representation: UTF-16 vs. UTF-8\n\nCurrently the @text@ library uses UTF-16 as its internal representation\nwhich is [neither a fixed-width nor always the most dense representation](http://utf8everywhere.org/)\nfor Unicode text. We're currently investigating the feasibility\nof [changing Text's internal representation to UTF-8](https://github.com/text-utf8)\nand if you need such a 'Text' type right now you might be interested in using the spin-off\npackages <https://hackage.haskell.org/package/text-utf8 text-utf8> and\n<https://hackage.haskell.org/package/text-short text-short>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          ] ++ (if flags.bytestring-builder
          then [ (hsPkgs.bytestring) (hsPkgs.bytestring-builder) ]
          else [ (hsPkgs.bytestring) ])) ++ (if flags.integer-simple
          then [ (hsPkgs.integer-simple) ]
          else [ (hsPkgs.integer-gmp) ]);
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.quickcheck-unicode)
            (hsPkgs.random)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            ] ++ (if flags.bytestring-builder
            then [ (hsPkgs.bytestring) (hsPkgs.bytestring-builder) ]
            else [ (hsPkgs.bytestring) ])) ++ (if flags.integer-simple
            then [ (hsPkgs.integer-simple) ]
            else [ (hsPkgs.integer-gmp) ]);
          };
        };
      };
    }