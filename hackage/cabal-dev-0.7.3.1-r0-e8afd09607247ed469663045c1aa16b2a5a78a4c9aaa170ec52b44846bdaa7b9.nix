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
    flags = { no-cabal-dev = false; build-tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-dev"; version = "0.7.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Galois, Inc.";
      maintainer = "j3h@galois.com, jtd@galois.com, creswick@galois.com";
      author = "Josh Hoyt, Jonathan Daughtery, Rogan Creswick";
      homepage = "https://github.com/creswick/cabal-dev";
      url = "";
      synopsis = "Manage sandboxed Haskell build environments";
      description = "cabal-dev is a tool for managing development builds of\nHaskell projects. It supports maintaining sandboxed\ncabal-install repositories, and sandboxed ghc package\ndatabases.\n\nBy default, it uses a cabal-dev directory under\nthe current working directory as the sandbox.\n\nFor most packages, just use @cabal-dev@ instead of\n@cabal@, and you will get a sandboxed build that\nwill not install anything (even automatically installed\ndependencies) into the user or global ghc package\ndatabases.\n\nIf your build depends on patched or unreleased libraries,\nyou can add them to your sandboxed build environment so\nthey can be installed by @cabal-dev@ or @cabal@. Just run:\n\n> cabal-dev add-source /path/to/source/code\n\n@cabal-dev add-source@ also supports importing tarballs\ninto a local cabal repository.\n\nThis tool has been tested with GHC 6.8-7.0.1.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ghc-pkg-6_8-compat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
        "cabal-dev-test" = {
          depends = pkgs.lib.optionals (!(flags.no-cabal-dev || !flags.build-tests)) ([
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          buildable = if flags.no-cabal-dev || !flags.build-tests
            then false
            else true;
        };
        "cabal-dev" = {
          depends = pkgs.lib.optionals (!flags.no-cabal-dev) ([
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          build-tools = [
            (hsPkgs.buildPackages.cabal.components.exes.cabal or (pkgs.buildPackages.cabal or (errorHandler.buildToolDepError "cabal:cabal")))
          ];
          buildable = if flags.no-cabal-dev then false else true;
        };
      };
    };
  }