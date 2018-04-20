{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strict-types";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Jose Iborra Lopez, 2017";
        maintainer = "Pepe Iborra (pepeiborra@gmail.com)";
        author = "Pepe Iborra";
        homepage = "https://github.com/pepeiborra/strict-types";
        url = "";
        synopsis = "A type level predicate ranging over strict types";
        description = "A type class for types T where forall x :: T . rnf x = ⊥ <=> rwhnf x = ⊥";
        buildType = "Simple";
      };
      components = {
        strict-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.foundation
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.type-level-sets
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }