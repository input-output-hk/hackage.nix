{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rocksdb-haskell";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012-2014 The leveldb-haskell Authors, Copyright (c) 2014 The rocksdb-haskell Authors";
        maintainer = "Serokell <hi@serokell.io>";
        author = "Kim Altintop, Alexander Thiemann et.al. (see AUTHORS file)";
        homepage = "http://github.com/serokell/rocksdb-haskell";
        url = "";
        synopsis = "Haskell bindings to RocksDB";
        description = "From <http://rocksdb.org>:\n\nRocksDB is an embeddable persistent key-value store for fast storage. RocksDB can also be the foundation for a client-server database but our current focus is on embedded workloads.\n\nRocksDB builds on LevelDB to be scalable to run on servers with many CPU cores, to efficiently use fast storage, to support IO-bound, in-memory and write-once workloads, and to be flexible to allow for innovation.";
        buildType = "Simple";
      };
      components = {
        "rocksdb-haskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
          libs = [ pkgs.rocksdb ];
        };
        tests = {
          "rocksdb-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.rocksdb-haskell
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.temporary
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }