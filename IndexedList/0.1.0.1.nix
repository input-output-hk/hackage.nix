{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "IndexedList";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Kenneth Foner";
        maintainer = "kenneth.foner@gmail.com";
        author = "Kenneth Foner";
        homepage = "https://github.com/kwf/IndexedList";
        url = "";
        synopsis = "Length- and element-indexed lists sitting somewhere between homogeneous and fully heterogeneous.";
        description = "This library implements /counted lists/ linked to type-level naturals indexing length, compatible with the Peano natural numbers found in \"Data.Numeric.Witness.Peano\", as well as so-called /conic lists/, which are linked to a type index listing the type indices of partially-heterogeneous values contained within.";
        buildType = "Simple";
      };
      components = {
        IndexedList = {
          depends  = [
            hsPkgs.base
            hsPkgs.PeanoWitnesses
          ];
        };
      };
    }