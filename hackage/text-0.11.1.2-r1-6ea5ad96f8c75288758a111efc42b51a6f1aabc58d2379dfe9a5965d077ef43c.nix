{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "text";
        version = "0.11.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2011 Bryan O'Sullivan, 2008-2009 Tom Harper";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>\nTom Harper <rtomharper@googlemail.com>\nDuncan Coutts <duncan@haskell.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://bitbucket.org/bos/text";
      url = "";
      synopsis = "An efficient packed Unicode text type.";
      description = "\nAn efficient packed, immutable Unicode text type (both strict and\nlazy), with a powerful loop fusion optimization framework.\n\nThe 'Text' type represents Unicode character strings, in a time and\nspace-efficient manner. This package provides text processing\ncapabilities that are optimized for performance critical use, both\nin terms of large data quantities and high speed.\n\nThe 'Text' type provides character-encoding, type-safe case\nconversion via whole-string case conversion functions. It also\nprovides a range of functions for converting 'Text' values to and from\n'ByteStrings', using several standard encodings.\n\nEfficient locale-sensitive support for text IO is also supported.\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with Prelude functions, e.g.\n\n> import qualified Data.Text as T\n\nTo use an extended and very rich family of functions for working\nwith Unicode text (including normalization, regular expressions,\nnon-standard encodings, text breaking, and locales), see\nthe @text-icu@ package:\n<http://hackage.haskell.org/package/text-icu>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.ghc-prim)
            (hsPkgs.base)
            (hsPkgs.deepseq)
          ]
          else [
            (hsPkgs.extensible-exceptions)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11") (hsPkgs.integer-gmp)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11")) (hsPkgs.integer);
      };
    };
  }