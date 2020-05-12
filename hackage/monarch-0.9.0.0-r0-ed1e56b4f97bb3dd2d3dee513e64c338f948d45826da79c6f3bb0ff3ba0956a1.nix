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
    flags = { develop = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "monarch"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      homepage = "https://github.com/notogawa/monarch";
      url = "";
      synopsis = "Monadic interface for TokyoTyrant.";
      description = "This package provides simple monadic interface for TokyoTyrant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monarch" or (errorHandler.buildDepError "monarch"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = if flags.develop then true else false;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monarch" or (errorHandler.buildDepError "monarch"))
            (hsPkgs."tokyotyrant-haskell" or (errorHandler.buildDepError "tokyotyrant-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = if flags.develop then true else false;
          };
        };
      };
    }