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
        name = "IndexedList";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kenneth Foner";
      maintainer = "kenneth.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "https://github.com/kwf/IndexedList";
      url = "";
      synopsis = "Length-indexed and element-indexed lists which sit somewhere between homogeneous and fully heterogeneous lists.";
      description = "This library implements /counted lists/ linked to type-level naturals indexing length, compatible with the Peano natural numbers found in \"Data.Numeric.Witness.Peano\", as well as so-called /conic lists/, which are linked to a type index listing the type indices of partially-heterogeneous values contained within.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.PeanoWitnesses)
        ];
      };
    };
  }