{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "unpacked-either-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unpacked-either" or ((hsPkgs.pkgs-errors).buildDepError "unpacked-either"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }