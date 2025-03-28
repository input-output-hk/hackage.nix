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
    flags = { release = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "delta-store"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2021-2023 IOHK, 2024-2025 Cardano Foundation";
      maintainer = "hal@cardanofoundation.org";
      author = "Cardano Foundation (High Assurance Lab)";
      homepage = "https://github.com/cardano-foundation/delta-types";
      url = "";
      synopsis = "Facilities for storing a Haskell value, using delta types.";
      description = "This package provides facilities for storing Haskell values\nin persistent storage as opposed to in volatile memory.\n\n* \"Data.Store\" — store values outside of volatile memory (RAM).\n\n* \"Data.DBVar\" — mutable variable that mirrors its value in a 'Store'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."delta-types" or (errorHandler.buildDepError "delta-types"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."delta-store" or (errorHandler.buildDepError "delta-store"))
            (hsPkgs."delta-types" or (errorHandler.buildDepError "delta-types"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }