{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      integer-simple = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text";
          version = "0.11.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2011 Bryan O'Sullivan, 2008-2009 Tom Harper";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/text";
        url = "";
        synopsis = "An efficient packed Unicode text type.";
        description = "\nAn efficient packed, immutable Unicode text type (both strict and\nlazy), with a powerful loop fusion optimization framework.\n\nThe 'Text' type represents Unicode character strings, in a time and\nspace-efficient manner. This package provides text processing\ncapabilities that are optimized for performance critical use, both\nin terms of large data quantities and high speed.\n\nThe 'Text' type provides character-encoding, type-safe case\nconversion via whole-string case conversion functions. It also\nprovides a range of functions for converting 'Text' values to and from\n'ByteStrings', using several standard encodings.\n\nEfficient locale-sensitive support for text IO is also supported.\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with Prelude functions, e.g.\n\n> import qualified Data.Text as T\n\nTo use an extended and very rich family of functions for working\nwith Unicode text (including normalization, regular expressions,\nnon-standard encodings, text breaking, and locales), see\nthe @text-icu@ package:\n<http://hackage.haskell.org/package/text-icu>\n\n&#8212;&#8212; RELEASE NOTES &#8212;&#8212;\n\nChanges in 0.11.2.0:\n\n* String literals are now converted directly from the format in\nwhich GHC stores them into 'Text', without an intermediate\ntransformation through 'String', and without inlining of\nconversion code at each site where a string literal is declared.\n";
        buildType = "Simple";
      };
      components = {
        text = {
          depends  = (([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ (if compiler.isGhc
            then [
              hsPkgs.ghc-prim
              hsPkgs.base
              hsPkgs.deepseq
            ]
            else [
              hsPkgs.extensible-exceptions
            ])) ++ (if compiler.isGhc && _flags.integer-simple
            then [ hsPkgs.integer-simple ]
            else [
              hsPkgs.integer-gmp
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.integer;
        };
        tests = {
          tests = {
            depends  = ([
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
            ] ++ (if compiler.isGhc && _flags.integer-simple
              then [ hsPkgs.integer-simple ]
              else [
                hsPkgs.integer-gmp
              ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.integer;
          };
        };
      };
    }