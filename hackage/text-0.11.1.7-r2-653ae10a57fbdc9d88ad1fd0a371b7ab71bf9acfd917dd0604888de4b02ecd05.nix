{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "text"; version = "0.11.1.7"; };
      license = "BSD-3-Clause";
      copyright = "2009-2011 Bryan O'Sullivan, 2008-2009 Tom Harper";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/text";
      url = "";
      synopsis = "An efficient packed Unicode text type.";
      description = "\nAn efficient packed, immutable Unicode text type (both strict and\nlazy), with a powerful loop fusion optimization framework.\n\nThe 'Text' type represents Unicode character strings, in a time and\nspace-efficient manner. This package provides text processing\ncapabilities that are optimized for performance critical use, both\nin terms of large data quantities and high speed.\n\nThe 'Text' type provides character-encoding, type-safe case\nconversion via whole-string case conversion functions. It also\nprovides a range of functions for converting 'Text' values to and from\n'ByteStrings', using several standard encodings.\n\nEfficient locale-sensitive support for text IO is also supported.\n\nThese modules are intended to be imported qualified, to avoid name\nclashes with Prelude functions, e.g.\n\n> import qualified Data.Text as T\n\nTo use an extended and very rich family of functions for working\nwith Unicode text (including normalization, regular expressions,\nnon-standard encodings, text breaking, and locales), see\nthe @text-icu@ package:\n<http://hackage.haskell.org/package/text-icu>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ]
          else [
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11") (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11")) (hsPkgs."integer" or (errorHandler.buildDepError "integer"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }