let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "TCache"; version = "0.6.5"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."RefSerialize" or (buildDepError "RefSerialize"))
          ];
        buildable = true;
        };
      };
    }