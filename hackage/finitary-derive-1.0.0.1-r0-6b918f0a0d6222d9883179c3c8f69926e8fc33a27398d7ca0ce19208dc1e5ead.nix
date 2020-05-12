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
      identifier = { name = "finitary-derive"; version = "1.0.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) Koz Ross 2019";
      maintainer = "koz.ross@retro-freedom.nz";
      author = "Koz Ross";
      homepage = "https://notabug.org/koz.ross/finitary-derive";
      url = "";
      synopsis = "Easy and efficient Unbox, Storable, Binary and Hashable\ninstances for Finitary types.";
      description = "Provides a wrapper with pre-made instances of Unbox,\nStorable, Binary and Hashable, suitable for use with types that\nhave Finitary instances. Never write Unbox by hand again!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."coercible-utils" or (errorHandler.buildDepError "coercible-utils"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
            (hsPkgs."finitary-derive" or (errorHandler.buildDepError "finitary-derive"))
            (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            ];
          buildable = true;
          };
        };
      };
    }