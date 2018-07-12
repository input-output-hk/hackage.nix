{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fca";
          version = "0.1.0.2";
        };
        license = "AGPL-3.0-only";
        copyright = "Raymond Racine";
        maintainer = "ray.racine@gmail.com";
        author = "Ray Racine";
        homepage = "";
        url = "";
        synopsis = "Algo for Formal Concept Analysis";
        description = "Formal Concept Analysis, Lindig's FastLattice Algo";
        buildType = "Simple";
      };
      components = {
        "fca" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }