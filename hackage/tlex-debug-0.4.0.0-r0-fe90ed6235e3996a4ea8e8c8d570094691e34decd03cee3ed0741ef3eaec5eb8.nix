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
      specVersion = "3.0";
      identifier = { name = "tlex-debug"; version = "0.4.0.0"; };
      license = "(Apache-2.0 OR MPL-2.0)";
      copyright = "(c) 2021 Mizunashi Mana";
      maintainer = "mizunashi-mana@noreply.git";
      author = "Mizunashi Mana";
      homepage = "https://github.com/mizunashi-mana/tlex";
      url = "";
      synopsis = "Debug utilities for Tlex";
      description = "Tlex is haskell libraries and toolchains for generating lexical analyzer.\nSee also: https://github.com/mizunashi-mana/tlex";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tlex-core" or (errorHandler.buildDepError "tlex-core"))
          (hsPkgs."tlex" or (errorHandler.buildDepError "tlex"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tlex-core" or (errorHandler.buildDepError "tlex-core"))
            (hsPkgs."tlex" or (errorHandler.buildDepError "tlex"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tlex-core" or (errorHandler.buildDepError "tlex-core"))
            (hsPkgs."tlex" or (errorHandler.buildDepError "tlex"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."tlex-debug" or (errorHandler.buildDepError "tlex-debug"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }