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
      specVersion = "1.12";
      identifier = { name = "storable-enum"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Wrapper that makes any Enum type Storable";
      description = "In foreign function interfaces you will often want to use enumeration types\nbut defining 'Storable' instances is cumbersome.\nThis package provides the type @Enum.Storable.T w e@,\nwhere e.g. @Enum.Storable.T Word8 Ordering@\nmeans that values of type 'Ordering' are stored in a 'Word8'.\nThe 'Storable' methods store the numeric values of the enumeration elements\nas obtained by 'fromEnum'.\nE.g. 'EQ' is stored as @1@.\nThe type itself stores a Haskell enumeration element,\nsuch that GHC can apply all of its optimizations for enumerations.\nIt is not checked, whether the storage type @w@ is large enough\nto hold all admissible numeric values of @e@.\nIt is also not checked, whether the storage type @w@ supports negative values\nwhenever the enumeration of @e@ contains ones.\n\nSee the @bool8@ package for the special case of a 'Bool' stored in a 'Word8'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."prelude-compat" or (buildDepError "prelude-compat"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }