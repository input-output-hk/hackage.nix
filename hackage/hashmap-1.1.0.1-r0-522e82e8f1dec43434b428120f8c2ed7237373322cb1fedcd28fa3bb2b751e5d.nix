{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hashmap"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fox@ucw.cz";
      author = "Milan Straka";
      homepage = "http://git.auryn.cz/haskell/hashmap/";
      url = "";
      synopsis = "Persistent containers HashMap and HashSet.";
      description = "An implementation of persistent 'HashMap' and 'HashSet' on\ntop of 'Data.IntMap.IntMap' and 'Data.IntSet.IntSet',\nwith very similar API. It uses 'Hashable' class from the\n@hashable@ package for hashing.\n\nThe @'HashMap' key value@ is an 'Data.IntMap.IntMap'\nindexed by the hash value, containing @'Data.Map.Map' key value@\nfor all keys with the same hash value.\n\nThe @'HashSet' elem@ is an 'Data.IntMap.IntMap' indexed by\nthe hash value, containing @'Data.Set.Set' elem@ for\nall elements with the same hash value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }