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
      identifier = { name = "unpacked-maybe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2018 Kyle McKean\nCopyright © 2018chessai";
      maintainer = "mckean.kylej@gmail.com";
      author = "Kyle McKean, chessai";
      homepage = "https://github.com/mckeankylej/unpacked-maybe#readme";
      url = "";
      synopsis = "An unpacked maybe data type";
      description = "This module is intended to be a drop-in replacement for the Maybe type provided by base. To shave off pointer chasing, it uses '-XUnboxedSums' to represent the Maybe type as two machine words that are contiguous in memory, without loss of expressiveness that Maybe provides.\n\nThis library provides pattern synonyms Just and Nothing that allow users to pattern match on an Unpacked Maybe in the familiar way.\n\nFunctions are also provided for converting an Unpacked Maybe to the base library's Maybe, and vice versa.\n\nThis library is in alpha, and the internals are likely to change.";
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
        "unpacked-maybe-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unpacked-maybe" or (errorHandler.buildDepError "unpacked-maybe"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }