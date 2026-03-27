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
    flags = { serialblockio = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "blockio"; version = "0.1.1.1"; };
      license = "Apache-2.0";
      copyright = "(c) 2023-2025 Cardano Development Foundation";
      maintainer = "joris@well-typed.com";
      author = "Duncan Coutts, Joris Dral, Matthias Heinzel, Wolfgang Jeltsch, Wen Kokke, and Alex Washburn";
      homepage = "";
      url = "";
      synopsis = "Perform batches of disk I/O operations.";
      description = "Perform batches of disk I\\/O operations. Performing batches of disk I\\/O can\nlead to performance improvements over performing each disk I\\/O operation\nindividually. Performing batches of disk I\\/O /concurrently/ can lead to an\neven bigger performance improvement depending on the implementation of batched\nI\\/O.\n\nThe batched I\\/O functionality in the library is separated into an /abstract/\n/interface/ and /implementations/ of that abstract interface. The advantage of\nprogramming against an abstract interface is that code can be agnostic to the\nimplementation of the interface, allowing implementations to be freely swapped\nout. The library provides multiple implementations of batched I\\/O:\nplatform-dependent implementations using the /real/ file system (with\nasynchronous I\\/O), and a simulated implementation for testing purposes.\n\nSee the \"System.FS.BlockIO\" module for an example of how to use the library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ (if system.isLinux
          then [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (!flags.serialblockio) (hsPkgs."blockio-uring" or (errorHandler.buildDepError "blockio-uring"))
          else if system.isOsx
            then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
            else pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")));
        buildable = true;
      };
      sublibs = {
        "sim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."fs-sim" or (errorHandler.buildDepError "fs-sim"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "test-sim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."blockio".components.sublibs.sim or (errorHandler.buildDepError "blockio:sim"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."fs-sim" or (errorHandler.buildDepError "fs-sim"))
            (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }