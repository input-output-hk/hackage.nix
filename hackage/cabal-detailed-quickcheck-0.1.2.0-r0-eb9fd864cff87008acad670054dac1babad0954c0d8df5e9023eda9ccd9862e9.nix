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
      specVersion = "2.4";
      identifier = { name = "cabal-detailed-quickcheck"; version = "0.1.2.0"; };
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
      };
    }