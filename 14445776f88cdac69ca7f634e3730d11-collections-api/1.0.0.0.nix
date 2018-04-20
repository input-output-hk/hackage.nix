{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "collections-api";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeanphilippe.bernardy (google mail)";
        author = "Jean-Philippe Bernardy";
        homepage = "http://code.haskell.org/collections/";
        url = "";
        synopsis = "API for collection data structures.";
        description = "This package provides classes for a consistent API to data\nstructures. The behaviour of the interface is specified by QuickCheck properties.\nIt is intended as an evolution of the API of the data structures in the @containers@ package.";
        buildType = "Simple";
      };
      components = {
        collections-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.array
          ];
        };
      };
    }