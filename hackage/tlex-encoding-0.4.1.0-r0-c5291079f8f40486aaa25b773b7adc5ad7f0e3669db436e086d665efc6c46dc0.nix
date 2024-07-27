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
      identifier = { name = "tlex-encoding"; version = "0.4.1.0"; };
      license = "(Apache-2.0 OR MPL-2.0)";
      copyright = "(c) 2021 Mizunashi Mana";
      maintainer = "contact@mizunashi.work";
      author = "Mizunashi Mana";
      homepage = "https://github.com/mizunashi-mana/tlex";
      url = "";
      synopsis = "Encoding plugin for Tlex";
      description = "Tlex is haskell libraries and toolchains for generating lexical analyzer.\nSee also: https://github.com/mizunashi-mana/tlex";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tlex-core" or (errorHandler.buildDepError "tlex-core"))
          (hsPkgs."tlex" or (errorHandler.buildDepError "tlex"))
          (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tlex-core" or (errorHandler.buildDepError "tlex-core"))
            (hsPkgs."tlex" or (errorHandler.buildDepError "tlex"))
            (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
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
            (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."tlex-encoding" or (errorHandler.buildDepError "tlex-encoding"))
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