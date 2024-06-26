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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unpacked-either"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/unpacked-either";
      url = "";
      synopsis = "An unpacked either data type";
      description = "This module is intended to be a drop-in replacement for Either. To shave off pointer chasing, it uses '-XUnboxedSums' to represent the Either type as two machine words that are contiguous in memory, without loss of expressiveness that Either provides.\n\nThis library provides pattern synonyms Left and Right that allow users to pattern match on an Unpacked Either in a familiar way.\n\nFunctions are also provided for converting an Unpacked Either to the base library's Either, and vice versa.\n\nThis library is in alpha, and the internals are likely to change.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      tests = {
        "unpacked-either-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unpacked-either" or (errorHandler.buildDepError "unpacked-either"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
          ];
          buildable = true;
        };
      };
    };
  }