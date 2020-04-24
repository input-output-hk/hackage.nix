{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hashmap"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fox@ucw.cz";
      author = "Milan Straka";
      homepage = "http://git.auryn.cz/haskell/hashmap/";
      url = "";
      synopsis = "Persistent containers Map and Set based on hashing.";
      description = "An implementation of persistent 'Map' and 'Set' containers\nbased on hashing. The implementation is build on\ntop of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',\nwith very similar API. It uses 'Hashable' class from the\n@hashable@ package for hashing.\n\nThis package can be used as a drop-in replacement for\n'Data.Map' and 'Data.Set' modules.\n\nThe @'Map' key value@ is an 'Data.IntMap.IntMap'\nindexed by the hash value, containing either one ('key', 'value')\nor a @'Data.Map.Map' key value@ for all keys with the same hash value.\n\nThe @'Set' elem@ is an 'Data.IntMap.IntMap' indexed by\nthe hash value, containing either one 'elem' or @'Data.Set.Set' elem@ for\nall elements with the same hash value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }