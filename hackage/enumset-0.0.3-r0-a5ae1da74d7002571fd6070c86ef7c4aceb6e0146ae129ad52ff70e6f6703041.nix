{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "enumset";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Sets of enumeration values represented by machine words";
      description = "With this package you can create a type safe interface to flag sets.\nIt is intended for interfacing to C libraries via FFI,\nwhere Word8, Word16, or Word32 types are commonly used to store bit vectors.\nE.g. the type @EnumSet Word16 Ordering@\nrepresents a flag set stored in a Word16\nthat supports the flags @LT@, @EQ@, @GT@.\n\nThis package is similar to the @bitset@ package and\nthe @Data.Edison.Coll.EnumSet@ module in the @edison@ package,\nhowever our implementation allows you to choose the embedding type\nand thus the maximum size of the set.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.data-accessor)
          (hsPkgs.storable-record)
          (hsPkgs.base)
        ];
      };
    };
  }