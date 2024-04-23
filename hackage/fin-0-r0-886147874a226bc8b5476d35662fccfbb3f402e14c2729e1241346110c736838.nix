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
      specVersion = "1.10";
      identifier = { name = "fin"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Nat and Fin";
      description = "This package provides two simple types, and some tools to work with them.\nAlso on type level as @DataKinds@.\n\n@\ndata Nat = Z | S Nat\ndata Fin (n :: Nat) where\nZ :: Fin n\nS :: Fin n -> Fin ('Nat.S n)\n@\n\nThe \"Data.Fin.Enum\" module let's work generically with enumerations.\n\nDifferences to other packages:\n\n* [type-natural](http://hackage.haskell.org/package/type-natural) depends\non @singletons@ package. `fin` will try to stay light on the dependencies,\nand support as many GHC versions as practical.\n\n* [peano](http://hackage.haskell.org/package/peano) is very incomplete\n\n* [nat](http://hackage.haskell.org/package/nat) as well.\n\n* [PeanoWitnesses](https://hackage.haskell.org/package/PeanoWitnesses)\ndoesn't use @DataKinds@.\n\n* [type-combinators](http://hackage.haskell.org/package/type-combinators)\nis big package too.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.10")) [
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        buildable = true;
      };
      tests = {
        "inspection" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = if !(compiler.isGhc && compiler.version.ge "8.0")
            then false
            else true;
        };
      };
    };
  }