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
      identifier = { name = "delta-types"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2021-2023 IOHK, 2024-2025 Cardano Foundation";
      maintainer = "hal@cardanofoundation.org";
      author = "Cardano Foundation (High Assurance Lab)";
      homepage = "https://github.com/cardano-foundation/delta-types";
      url = "";
      synopsis = "Delta types, also known as change actions.";
      description = "A __delta type__ @da@ for a __base type__ @a@ is a collection\nof values, each of which corresponds to a change @a → a@ of the base type.\n\nSee also\n\n* [Delta encodings help separate business logic from database operations](https://bobkonf.de/2023/apfelmus.html)\n\n* [Fixing Incremental Computation: Derivatives of Fixpoints, and the Recursive Semantics of Datalog](http://arxiv.org/abs/1811.06069)\n(Here, the concept of a delta type is called a __change action__.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."delta-types" or (errorHandler.buildDepError "delta-types"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
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