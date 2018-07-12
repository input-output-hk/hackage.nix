{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "array-utils";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alex Mason <axman6@gmail.com>";
        author = "Alex Mason";
        homepage = "";
        url = "";
        synopsis = "Primitive functions for updating many elements in mutable arrays at once";
        description = "An collection of functions for working with multiple elements in\nmutable arrays. It is hoped some or all of these functions will be\nincluded in the array package for GHC 7.2.";
        buildType = "Simple";
      };
      components = {
        "array-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }