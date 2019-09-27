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
      identifier = { name = "typelits-witnesses"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "(c) Justin Le 2015";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/typelits-witnesses";
      url = "";
      synopsis = "Existential witnesses, singletons, and classes for operations on GHC TypeLits";
      description = "Provides witnesses for 'KnownNat' and 'KnownSymbol'\ninstances for various operations on GHC TypeLits - in\nparticular, the arithmetic operations defined in\n\"GHC.TypeLits\", and also for type-level lists of\n'KnownNat' and 'KnownSymbol' instances.\n\nThis is useful for situations where you have\n@'KnownNat' n@, and you want to prove to GHC\n@'KnownNat' (n + 3)@, or @'KnownNat' (2*n + 4)@.\n\nIt's also useful for when you want to work with type\nlevel lists of 'KnownNat' or 'KnownSymbol' instances and\nsingletons for traversing them, and be able to apply\nanalogies of 'natVal' and 'symbolVal' to lists with\nanalogies for 'SomeNat' and 'SomeSymbol'.\n\nSee README for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          ];
        buildable = true;
        };
      };
    }