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
      specVersion = "1.8";
      identifier = { name = "concurrent-extra"; version = "0.7.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2012 Bas van Dijk & Roel van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      homepage = "https://github.com/basvandijk/concurrent-extra";
      url = "";
      synopsis = "Extra concurrency primitives";
      description = "The @concurrent-extra@ package offers among other things the\nfollowing selection of synchronisation primitives:\n\n* @Broadcast@: Wake multiple threads by broadcasting a value.\n\n* @Event@: Wake multiple threads by signalling an event.\n\n* @Lock@: Enforce exclusive access to a resource. Also known as a\nbinary semaphore or mutex. The package additionally provides an\nalternative that works in the @STM@ monad.\n\n* @RLock@: A lock which can be acquired multiple times by the same\nthread. Also known as a reentrant mutex.\n\n* @ReadWriteLock@: Multiple-reader, single-writer locks. Used to\nprotect shared resources which may be concurrently read, but only\nsequentially written.\n\n* @ReadWriteVar@: Concurrent read, sequential write variables.\n\nPlease consult the API documentation of the individual modules for\nmore detailed information.\n\nThis package was inspired by the concurrency libraries of Java and\nPython.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
          ];
        buildable = true;
        };
      tests = {
        "test-concurrent-extra" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }