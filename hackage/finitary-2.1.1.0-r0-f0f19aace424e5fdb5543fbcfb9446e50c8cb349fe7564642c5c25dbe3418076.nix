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
    flags = { bitvec = true; vector = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "finitary"; version = "2.1.1.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) Koz Ross 2019-2020";
      maintainer = "Sam Derbyshire";
      author = "Koz Ross";
      homepage = "https://notabug.org/sheaf/finitary";
      url = "";
      synopsis = "A better, more type-safe Enum.";
      description = "Provides a type class witnessing that a type has\nfinitely-many inhabitants, as well as its cardinality.\nAlso provides an auto-deriving framework using GHC\nGenerics, together with a range of instances for existing\ntypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (flags.bitvec) (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))) ++ (pkgs.lib).optionals (flags.vector) [
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          (hsPkgs."typelits-witnesses" or (errorHandler.buildDepError "typelits-witnesses"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."typelits-witnesses" or (errorHandler.buildDepError "typelits-witnesses"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            ];
          buildable = true;
          };
        };
      };
    }