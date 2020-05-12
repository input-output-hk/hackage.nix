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
      identifier = { name = "unpacked-validation"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/unpacked-validation";
      url = "";
      synopsis = "An unpacked validation data type";
      description = "The 'Validation' type and associated operations.\n\nThis library is intended to be a drop-in replacement for /Data.Valiation/. To shave off pointer chasing, it uses -XUnboxedSums to represent the 'Validation' type as two machine words that are contiguous in memory, without loss of expressiveness that 'Validation' provides.\n\nThis library provides pattern synonyms Failure and Success, which allow users to pattern match on an Unpacked Validation in a familiar way.\n\nFunctions are also provided for converting an Unpacked Validation to the validation library's These, and vice versa.\n\nThis library is in alpha, and the internals are likely to change.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."unpacked-either" or (errorHandler.buildDepError "unpacked-either"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          ];
        buildable = true;
        };
      tests = {
        "unpacked-validation-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unpacked-validation" or (errorHandler.buildDepError "unpacked-validation"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }