{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TCache";
          version = "0.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "A Transactional data cache with configurable persistence";
        description = "Data.Tcache is a transactional cache with configurable persistence. It tries to simulate Hibernate\nfor Java or Rails for Ruby. The main difference is that transactions are done in memory trough STM.\nThere are transactional cache implementations for some J2EE servers like JBOSS.\n\nTCache uses STM. It can  atomically apply a function to a list of cached objects. The resulting\nobjects go back to the cache (withResources). It also can retrieve these objects (getResources).\nPersistence can be syncronous (syncCache)  or asyncronous, wtih configurable time between cache\nwrites and configurable cache clearance strategy. the size of the cache can be configured too .\nAll of this can be done trough clearSyncCacheProc. Even the TVar variables can be accessed\ndirectly (getTVar) to acceess all the semantic of atomic blocks while maintaining the persistence of the\nTVar updates.\n\nPersistence can be defined for each object: Each object must have a defined key, a default filename\npath (if applicable). Persistence is pre-defined in files, but the readResource writeResource and\ndelResource methods can be redefined to persist in databases or whatever.\n\nSerialization is also configurable.\n\nThere are  Samples here that explain the main features.\n\nIn this release\n\n* added withSTMResources. Most of the rest of the methods are derived from withSTMResources .  the results are returned in the STM monad, so  this method can be part of al larger STM transaction\nIt also can perforn used defined retries.\n\n* added modules for cached TMVars\nData.TCache.TMVar and Data.TCache.TMVar.Dynamic uses TMVars instead of TVars (See Control.Concurrent.STM.TMVar)\n\nIt is not possible tu mix TVars and TMVars packages in the same executable. However code that uses dynamic and non dynamic can\ncan be mixed\n\n* Data.TCache                       - cached TVars of object of type a.\n\n* Data.TCache.Dynamic           - cached TVars of objects of type IDynamic.\n\n* Data.TCache.TMVar             - cached TMVars of objects of type a.\n\n* Data.TCache..TMVar.Dynamic    - cached TMVars of objects of type IDynamic.";
        buildType = "Simple";
      };
      components = {
        TCache = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.RefSerialize
          ];
        };
      };
    }