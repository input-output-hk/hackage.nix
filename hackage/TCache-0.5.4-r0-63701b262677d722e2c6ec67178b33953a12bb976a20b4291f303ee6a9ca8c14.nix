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
        version = "0.5.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "A Transactional data cache with configurable persistence";
      description = "This version correct an error in the version 0.5.3. since 0.5 nothing in the code has changed except that\nthe  \"&& <4\" in the build dependencies added in the 0.5.3 the behaviour of getClocktime to be lazy, that indeed\nmakes the cache write algoritm not to work, with the result tha no file is written.\nThis version force the strict evaluation and correct this error.\nData.Tcache is a transactional cache with configurable persistence. It tries to simulate Hibernate\nfor Java or Rails for Ruby. The main difference is that transactions are done in memory trough STM.\nThere are transactional cache implementations for some J2EE servers like JBOSS.\nTCache uses STM . It can  atomically apply a function to a list of cached objects. The resulting\nobjects go back to the cache (withResources). It also can retrieve these objects (getResources).\nPersistence can be syncronous (syncCache)  or asyncronous, wtih configurable time between cache\nwrites and configurable cache clearance strategy. the size of the cache can be configured too .\nAll of this can be done trough clearSyncCacheProc. Even the TVar variables can be accessed\ndirectly (getTVar) to acceess all the semantic of atomic blocks while maintaining the persistence of the\nTVar updates.\nPersistence can be defined for each object.: Each object must have a defined key, a default filename\npath (if applicable). Persistence is pre-defined in files, but the readResource writeResource and\ndelResource methods can be redefined to persist in databases or whatever.\nThere is a Sample.hs that explain the main features.";
      buildType = "Simple";
    };
    components = {
      "TCache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
        ];
      };
    };
  }