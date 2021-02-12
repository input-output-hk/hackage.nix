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
      identifier = { name = "finitary-derive"; version = "3.0.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) Koz Ross 2019";
      maintainer = "Sam Derbyshire";
      author = "Koz Ross";
      homepage = "https://notabug.org/sheaf/finitary-derive";
      url = "";
      synopsis = "Flexible and easy deriving of type classes for finitary\ntypes.";
      description = "Provides a collection of wrappers, allowing you to easily\ndefine (among others) Unbox, Storable, Hashable and\nBinary instances for finitary types with flexibility in\nterms of representation and efficiency. Never write an\nUnbox instance by hand again!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
          (hsPkgs."coercible-utils" or (errorHandler.buildDepError "coercible-utils"))
          (hsPkgs."ghc-typelits-extra" or (errorHandler.buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "9.0"
          then [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."finitary-derive" or (errorHandler.buildDepError "finitary-derive"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or (errorHandler.buildDepError "hedgehog-classes"))
            ];
          buildable = true;
          };
        };
      };
    }