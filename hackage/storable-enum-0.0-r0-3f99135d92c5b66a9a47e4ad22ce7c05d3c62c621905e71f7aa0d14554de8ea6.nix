{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."prelude-compat" or ((hsPkgs.pkgs-errors).buildDepError "prelude-compat"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }