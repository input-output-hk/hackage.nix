{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "secure-memory"; version = "0.0.0.2"; };
      license = "MPL-2.0";
      copyright = "2021 Serokell";
      maintainer = "Serokell <libraries@serokell.io>";
      author = "Kirill Elagin <kirelagin@serokell.io>";
      homepage = "https://github.com/serokell/haskell-crypto#readme";
      url = "";
      synopsis = "Securely allocated and deallocated memory.";
      description = "Securely allocated and deallocated memory.\n\nWhen handling sensitive data in your program, you want to be extra\ncareful and make sure that it is gone as soon as you are done working\nwith it. In a garbage-collected language like Haskell this is not so easy,\nsince the garbage collector can move your bytes around and create copies\nof it. In addition to that, even if the memory gets eventually deallocated,\nit is not guaranteed that the data will actually be zeroed-out or overriden.\n\nTo make matters even worse, if the operating system runs out of RAM while\nyour sensitive data remains in the memory, the page that contains your data\ncan get swapped out and, thus, end up on the disk, which you, of course,\nabsolutely want to never happen.\n\nThis library provides a (relatively) easy to use interface for working\nwith data allocated in a secure memory location that is guaranteed to never\nend up on the disk and that will be zeroed-out as soon as you finish using it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      exes = {
        "checkpw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."secure-memory" or (errorHandler.buildDepError "secure-memory"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-pipe" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."secure-memory" or (errorHandler.buildDepError "secure-memory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = if system.isWindows then false else true;
        };
        "test-simple" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."secure-memory" or (errorHandler.buildDepError "secure-memory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }