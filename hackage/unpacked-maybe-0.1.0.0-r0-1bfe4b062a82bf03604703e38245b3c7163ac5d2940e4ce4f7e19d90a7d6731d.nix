let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "unpacked-maybe-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unpacked-maybe" or (buildDepError "unpacked-maybe"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (buildDepError "quickcheck-classes"))
            ];
          buildable = true;
          };
        };
      };
    }