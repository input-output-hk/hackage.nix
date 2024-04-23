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
      identifier = { name = "unpacked-these"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/unpacked-these";
      url = "";
      synopsis = "An unpacked these data type";
      description = "The 'These' type and associated operations.\n\nThis module is intended to be a drop-in(*) replacement for /Data.These/. To shave off pointer chasing, it uses -XUnboxedSums to represent the 'These' type as two machine words that are contiguous in memory, without loss of expressiveness that 'These' provides.\n\nThis library provides pattern synonyms This, That, and Both(*), which allow users to pattern match on an Unpacked These in a familiar way.\n\nFunctions are also provided for converting an Unpacked These to the these library's These, and vice versa.\n\n(*): pattern synonyms use the same namespace as type constructors, so pattern matching on an Unpacked These with the more familiar 'These' data constructor is not possible, instead, Both is provided.\n\nThis library is in alpha, and the internals are likely to change.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."unpacked-maybe" or (errorHandler.buildDepError "unpacked-maybe"))
        ];
        buildable = true;
      };
      tests = {
        "unpacked-these-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unpacked-these" or (errorHandler.buildDepError "unpacked-these"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
          ];
          buildable = true;
        };
      };
    };
  }