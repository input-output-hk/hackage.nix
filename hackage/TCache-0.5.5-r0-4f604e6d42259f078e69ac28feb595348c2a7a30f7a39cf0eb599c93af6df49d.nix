{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "TCache";
        version = "0.5.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "A Transactional data cache with configurable persistence";
      description = "Data.Tcache is a transactional cache with configurable persistence. It tries to simulate Hibernate\nfor Java or Rails for Ruby. The main difference is that transactions are done in memory trough STM.\nThere are transactional cache implementations for some J2EE servers like JBOSS.\nTCache uses STM. It can  atomically apply a function to a list of cached objects. The resulting\nobjects go back to the cache (withResources). It also can retrieve these objects (getResources).\nPersistence can be syncronous (syncCache)  or asyncronous, wtih configurable time between cache\nwrites and configurable cache clearance strategy. the size of the cache can be configured too .\nAll of this can be done trough clearSyncCacheProc. Even the TVar variables can be accessed\ndirectly (getTVar) to acceess all the semantic of atomic blocks while maintaining the persistence of the\nTVar updates.\nPersistence can be defined for each object: Each object must have a defined key, a default filename\npath (if applicable). Persistence is pre-defined in files, but the readResource writeResource and\ndelResource methods can be redefined to persist in databases or whatever.\nThere are  Samples here that explain the main features.\nIn this release:\nAdded a Data.TCache.Dynamic.  (SEE dynamicsample.hs)\n- Can handle, transact, and serialize to disk many datatypes simultaneously and incrementally\n- Dynamic uses the same interface than TCache and add *DResource(s) calls\n- Safe dynamic data handling trough a lighter, indexable and serializable version of Data.Dynamic\n- Added KEY object for retrieving any object of any type.";
      buildType = "Simple";
    };
    components = {
      "TCache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.stm)
        ];
      };
    };
  }