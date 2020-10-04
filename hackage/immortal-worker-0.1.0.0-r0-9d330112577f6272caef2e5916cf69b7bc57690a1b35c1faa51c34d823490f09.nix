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
      specVersion = "1.10";
      identifier = { name = "immortal-worker"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Anton Gushcha";
      maintainer = "Anton Gushcha <ncrashed@protonmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Create worker threads that logs exceptions and restarts.";
      description = "The package provides means for common pattern in web development in Haskell.\nWhen you need a thread that makes some task in a loop with sleeping between\niterations you don't wan't it to die from some occasional exception.\n\nSo, the package contains:\n\n* Helper to create non-dying labeled threads with logging of occured exceptions.\nOnly synchronous exceptions are considered as safe for restoring from. Delay is\nadded between respawns of worker.\n\n* Isolation helpers for subactions that should not interfere with each other.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."immortal" or (errorHandler.buildDepError "immortal"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }