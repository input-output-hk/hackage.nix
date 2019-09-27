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
      specVersion = "1.2.3";
      identifier = { name = "persistent-map"; version = "0.3.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2009";
      homepage = "http://darcs.monoid.at/persistent-map";
      url = "";
      synopsis = "A thread-safe (STM) persistency interface for finite map types.";
      description = "/Changes in 0.3.*:/\n\n* Added the 'TFiniteMap' type to make type construction more convenient.\n\n* Added 'markAsDirty'.\n\n* Fixed data corruption issues with 'Backend.Binary'.\n\n/Changes in 0.2.*:/\n\n* Improved error handling. Backend lookup-exceptions are now rethrown in the\nAdvSTM monad.\n\n/Changes in 0.1.*:/\n\n* Added the binary serialization backend.\n\nThis library provides a thread-safe (STM) frontend for finite map types together with a\nbackend interface for persistent storage. The /TMap/ data type\nis thread-safe, since all access functions run inside an STM monad . Any type\ninstantiating 'Data.Edison.Assoc.FiniteMapX'\n(see EdisonAPI) can be used as a map type.\n\nWhen a TMap is modified within an STM transaction, a corresponding\nbackend IO-request is added using the onCommit hook (cf. stm-io-hooks\npackage). To ensure consistency,\nthe (Adv)STM monad runs these requests iff the transaction commits.\nAdditional backends (e.g. HDBC) can be added by instantiating the class\n'Backend'.\n\n/Example:/\n\nThread 1:\n\n> atomically \$ do\n>   isMemb <- member 1 tmap\n>   when (not isMemb) \$\n>     insert 1 \"john doe\" tmap\n\nThread 2:\n\n> atomically \$ do\n>   v <- lookup 1 tmap\n>   -- ... do something with 'v'\n>   adjust (\\_ -> \"jd\") 1 tmap\n\nThe function 'member' will first check whether the key value '1' is in the map;\nif not, it sends a lookup-request to the persistent backend\nand then retries the transaction. Note that \\\"sending a lookup-request\\\"\nessentially means adding a call to the corresponding IO-function of the backend\nto the list of retry-IO actions. (This is done using the 'retryWith'\nIO hook of the stm-io-package.)\n\nIf the value does not yet exist, function 'insert' adds the key-value mapping to the\nTMap and sends an insert-request to the backend using the\n'onCommit' hook of the stm-io-package. Note that 'onCommit' guarantees that\nthe backend IO action is only executed iff the transaction commits. Any\nchanges that were made to the TMap are invisible to other threads until\nthe onCommit actions are run.  Therefore, the threads will always observe a\nconsistent state.\n\nThe module 'Data.TStorage' provides a high level interface to TMap inspired\nby the TCache package ((C) Alberto Gomez Corona). It\ncan store any type that has a key (i.e. is an instance of type class 'HasKey').\nSee file Sample.hs for an example on how to use it.\n\n/Warning:/ This package is very experimental and the interface will\nprobably change.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."EdisonAPI" or (buildDepError "EdisonAPI"))
          (hsPkgs."LRU" or (buildDepError "LRU"))
          (hsPkgs."EdisonCore" or (buildDepError "EdisonCore"))
          (hsPkgs."stm-io-hooks" or (buildDepError "stm-io-hooks"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }