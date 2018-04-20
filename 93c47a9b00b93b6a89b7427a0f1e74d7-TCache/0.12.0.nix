{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "TCache";
          version = "0.12.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "A Transactional cache with user-defined persistence";
        description = "TCache is a transactional cache with configurable persitence. It allows conventional\nSTM transactions for objects that syncronize  with their user-defined storages.\nState in memory and into permanent storage is transactionally coherent.\n\nIt has interface defined for Amazon WS and Yesod Persistent backends defined in tcache-<backend>\npackages.\nPersistent is a multi-backend interface for SQL and non SQL databases such in Mongo-db\n\nThe package implements serializable STM references, access by key and by record field value, triggers,\nfull text and field indexation, default serialization and a query language based on record fields\n\nSince the STM references can be included in data structures and serialized, this is right\nfor graph databases and other NoSQL databases.\n\n0.12.0 space in index data in indexQuery.hs and IndexText.hs triggered errors in the AWS backend.\nThe space has been changed by '-'. So rename the \"index *\" files in the TCache folder\nin order to be recognized.\n\n0.11.0.0 added setIndexParsist to define persistence for indexes by type. started the addition of readDBRefs, readResources and so on for simultaneous read, writes and deletes of\nobjects of the same type.\n\n0.10.2.0 Added setDefaultPersist and modified the signature of setPersist in Data.TCache.DefaultPersistence.\nFixed issues with ghc 7.6.3\n\n0.10  version add memoization and a persistent and transactional collection/queue.\n\n0.10.0.8 subversion add cachedByKeySTM\n\n0.10.0.9 fixed an error in clearSyncChacheProc and SynWrite Asyncronous that checked the cache continuously\n\nSee \"Data.TCache\" for details\n\nIn this release:\n\nDropped Data.Hashtable (deprecated). Now it uses the package hashtables";
        buildType = "Simple";
      };
      components = {
        TCache = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.hashtables
            hsPkgs.RefSerialize
          ];
        };
      };
    }