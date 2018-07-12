{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hashmap";
          version = "1.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fox@ucw.cz";
        author = "Milan Straka";
        homepage = "";
        url = "";
        synopsis = "Persistent containers HashMap and HashSet.";
        description = "An implementation of persistent 'HashMap' and 'HashSet' on\ntop of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',\nwith very similar API.\n\nThe class 'Hashable' is providing the 'Hashable.hash'\nmethod.\n\nThe @'HashMap' key value@ is an 'Data.IntMap.IntMap'\nindexed by the hash value, containing @'Data.Map.Map' key value@\nfor all keys with the same hash value.\n\nThe @'HashSet' elem@ is an 'Data.IntMap.IntMap' indexed by\nthe hash value, containing @'Data.Set.Set' elem@ for\nall elements with the same hash value.";
        buildType = "Simple";
      };
      components = {
        "hashmap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
          ];
        };
      };
    }