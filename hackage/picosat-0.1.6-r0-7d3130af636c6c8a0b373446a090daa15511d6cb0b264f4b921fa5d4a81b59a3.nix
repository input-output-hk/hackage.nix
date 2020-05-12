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
      identifier = { name = "picosat"; version = "0.1.6"; };
      license = "MIT";
      copyright = "2014-2019 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/haskell-picosat";
      url = "";
      synopsis = "Bindings to the PicoSAT solver";
      description = "`picosat` provides bindings for the fast PicoSAT solver library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "Sudoku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."picosat" or (errorHandler.buildDepError "picosat"))
            ];
          buildable = true;
          };
        "Scoped" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."picosat" or (errorHandler.buildDepError "picosat"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "rand-shared-improvement" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."picosat" or (errorHandler.buildDepError "picosat"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."rdtsc" or (errorHandler.buildDepError "rdtsc"))
            ];
          buildable = true;
          };
        };
      };
    }