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
      identifier = { name = "hashmap"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fox@ucw.cz";
      author = "Milan Straka";
      homepage = "";
      url = "";
      synopsis = "Persistent HashMap with API of an IntMap.";
      description = "An implementation of persistent 'HashMap'.\n\nThe class 'Hashable' is providing the 'Hashable.hash'\nmethod.\n\nThe @'HashMap' key value@ itself is an\n'Data.IntMap.IntMap' indexed by the hash value, containing\n@'Data.Map.Map' key value@ for all keys with the same hash\nvalue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }