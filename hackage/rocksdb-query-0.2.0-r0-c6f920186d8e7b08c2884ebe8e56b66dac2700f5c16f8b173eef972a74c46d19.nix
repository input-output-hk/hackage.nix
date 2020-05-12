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
      specVersion = "1.10";
      identifier = { name = "rocksdb-query"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "No Rights Reserved";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/rocksdb-query#readme";
      url = "";
      synopsis = "RocksDB database querying library for Haskell";
      description = "Please see the README on GitHub at <https://github.com/xenog/rocksdb-query#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."rocksdb-haskell" or (errorHandler.buildDepError "rocksdb-haskell"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "rocksdb-query-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rocksdb-haskell" or (errorHandler.buildDepError "rocksdb-haskell"))
            (hsPkgs."rocksdb-query" or (errorHandler.buildDepError "rocksdb-query"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }