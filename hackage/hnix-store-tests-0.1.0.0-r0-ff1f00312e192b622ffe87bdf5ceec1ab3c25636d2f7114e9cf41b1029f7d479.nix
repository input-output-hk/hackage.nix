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
      specVersion = "2.2";
      identifier = { name = "hnix-store-tests"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2023 Sorki";
      maintainer = "srk@48.io";
      author = "Sorki";
      homepage = "https://github.com/haskell-nix/hnix-store";
      url = "";
      synopsis = "Test utilities and instances";
      description = "This package contains Arbitrary instances for core\ntypes, roundtrip property tests, utility functions\nand a harness for running tests that require nix-store\nwith nix-daemon.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "props" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
            (hsPkgs."hnix-store-tests" or (errorHandler.buildDepError "hnix-store-tests"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }