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
      identifier = { name = "geom2d"; version = "0.1.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sebastian.jordan.mail@googlemail.com";
      author = "Sebastian Jordan";
      homepage = "";
      url = "";
      synopsis = "package for geometry in euklidean 2d space";
      description = "This package provides tools for dealing with geometric\nobjects in 2D space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          ];
        };
      tests = {
        "point" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "line" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "intersect" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "distance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "translate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "shape" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ieee754" or (buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }