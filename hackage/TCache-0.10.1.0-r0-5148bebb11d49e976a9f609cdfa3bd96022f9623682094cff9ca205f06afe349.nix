{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "TCache";
        version = "0.10.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "A Transactional cache with user-defined persistence";
      description = "TCache is a transactional cache with configurable persitence. It allows conventional\nSTM transactions for objects that syncronize  with their user-defined storages.\nState in memory and into permanent storage is transactionally coherent.\n\nThe package implements serializable STM references, access by key and by record field value, triggers,\nfull text and field indexation, default serialization and a query language based on record fields\n\n0.10  version add memoization and a persistent and transactional collection/queue.\n\n0.10.0.8 subversion add cachedByKeySTM\n\n0.10.0.9 fixed an error in clearSyncChacheProc and SynWrite Asyncronous that checked the cache continuously\n\nSee \"Data.TCache\" for details\n\nIn this release:\n\nadded setDefaultPersist and modified the signature of setPersist in Data.TCache.DefaultPersistence.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.RefSerialize)
        ];
      };
    };
  }