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
    flags = { build-testing = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "semaphore-compat"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghc-devs@haskell.org";
      author = "The GHC team";
      homepage = "https://gitlab.haskell.org/ghc/semaphore-compat";
      url = "";
      synopsis = "Cross-platform abstraction for system semaphores";
      description = "Cross-platform semaphores for managing resources across processes,\nabstracting over Win32 named semaphores on Windows and Unix domain sockets\non POSIX.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else pkgs.lib.optionals (!(system.isWasm32 || system.isJavaScript)) [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]);
        buildable = true;
      };
      sublibs = {
        "semaphore-test-common" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = if !flags.build-testing then false else true;
        };
      };
      exes = {
        "semaphore-helper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semaphore-compat".components.sublibs.semaphore-test-common or (errorHandler.buildDepError "semaphore-compat:semaphore-test-common"))
          ];
          buildable = if !flags.build-testing then false else true;
        };
      };
      tests = {
        "semaphore-compat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
            (hsPkgs."semaphore-compat".components.sublibs.semaphore-test-common or (errorHandler.buildDepError "semaphore-compat:semaphore-test-common"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.semaphore-compat.components.exes.semaphore-helper or (pkgs.pkgsBuildBuild.semaphore-helper or (errorHandler.buildToolDepError "semaphore-compat:semaphore-helper")))
          ];
          buildable = if !flags.build-testing then false else true;
        };
      };
    };
  }