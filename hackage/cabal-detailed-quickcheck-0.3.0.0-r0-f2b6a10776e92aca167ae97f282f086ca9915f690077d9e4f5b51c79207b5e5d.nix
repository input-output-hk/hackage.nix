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
      specVersion = "3.4";
      identifier = { name = "cabal-detailed-quickcheck"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Ⓒ Anselm Schüler 2022";
      maintainer = "mail@anselmschueler.com";
      author = "Anselm Schüler";
      homepage = "https://github.com/schuelermine/cabal-detailed-quickcheck";
      url = "";
      synopsis = "QuickCheck for Cabal tests";
      description = "Turn QuickCheck properties into detailed Cabal tests";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-detailed-quickcheck" or (errorHandler.buildDepError "cabal-detailed-quickcheck"))
          ];
          buildable = if !system.isLinux then false else true;
        };
      };
    };
  }