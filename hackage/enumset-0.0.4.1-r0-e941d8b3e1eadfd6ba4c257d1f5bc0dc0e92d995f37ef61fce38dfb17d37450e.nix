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
      identifier = { name = "enumset"; version = "0.0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Sets of enumeration values represented by machine words";
      description = "With this package you can create a type safe interface to flag sets.\nIt is intended for interfacing to C libraries via FFI,\nwhere Word8, Word16, or Word32 types are commonly used to store bit vectors.\nE.g. the type @EnumSet Word16 Ordering@\nrepresents a flag set stored in a Word16\nthat supports the flags @LT@, @EQ@, @GT@.\n\nThis package is similar to the @bitset@ package and\nthe @Data.Edison.Coll.EnumSet@ module in the @edison@ package,\nhowever our implementation allows you to choose the embedding type\nand thus the maximum size of the set.\n\nSee also @data-flags@ and @Data.EnumSet@ in @enummapset@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }