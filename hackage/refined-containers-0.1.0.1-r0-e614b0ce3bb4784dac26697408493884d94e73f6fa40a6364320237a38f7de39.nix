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
      specVersion = "3.0";
      identifier = { name = "refined-containers"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mniip@typeable.io";
      author = "mniip@typeable.io";
      homepage = "";
      url = "";
      synopsis = "Type-checked proof that a key exists in a container and can be safely\nindexed.";
      description = "This package defines ways to prove that a key exists in an associative\ncontainer such as a 'Map', 'IntMap', or 'HashMap'; so that the key can be\nused to index into the map without a 'Maybe' or manually handling the\n\\\"impossible\\\" case with 'error' or other partial functions.\n\nTo do this, the containers are tagged with a type parameter that identifies\ntheir set of keys, so that if you have another container with the same\nparameter, you know it has the same keys.\n\nThere is also a type of keys that have been proven to exist in such\ncontainers -- a refinement type. They are also tagged with a type parameter.\nIf the type parameter of the key matches that of the container, indexing is\nguaranteed to proceed without failure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }