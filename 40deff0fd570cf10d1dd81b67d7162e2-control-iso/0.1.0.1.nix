{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "control-iso";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fresheyeball@gmail.com";
        author = "Isaac Shapira";
        homepage = "";
        url = "";
        synopsis = "A typeclass for type isomorphisms";
        description = "This is a type class for type isomorphisms, it provides string conversions as well as for newtypes and common types";
        buildType = "Simple";
      };
      components = {
        "control-iso" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.newtype-generics
            hsPkgs.profunctors
            hsPkgs.text
          ];
        };
      };
    }