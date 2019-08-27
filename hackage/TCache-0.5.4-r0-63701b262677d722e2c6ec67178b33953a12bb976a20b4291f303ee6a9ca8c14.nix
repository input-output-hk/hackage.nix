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
      identifier = { name = "TCache"; version = "0.5.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          ];
        };
      };
    }