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
      identifier = { name = "rocksdb-haskell"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2014 The leveldb-haskell Authors, Copyright (c) 2014 The rocksdb-haskell Authors";
      maintainer = "mail@agrafix.net";
      author = "Kim Altintop, Alexander Thiemann et.al. (see AUTHORS file)";
      homepage = "http://github.com/agrafix/rocksdb-haskell";
      url = "";
      synopsis = "Haskell bindings to RocksDB";
      description = "From <http://rocksdb.org>:\n\nRocksDB is an embeddable persistent key-value store for fast storage. RocksDB can also be the foundation for a client-server database but our current focus is on embedded workloads.\n\nRocksDB builds on LevelDB to be scalable to run on servers with many CPU cores, to efficiently use fast storage, to support IO-bound, in-memory and write-once workloads, and to be flexible to allow for innovation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [ (pkgs."rocksdb" or (errorHandler.sysDepError "rocksdb")) ];
        buildable = true;
      };
    };
  }