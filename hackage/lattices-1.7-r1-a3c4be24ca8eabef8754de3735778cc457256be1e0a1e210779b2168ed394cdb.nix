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
      identifier = { name = "lattices"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2015 Maximilian Bolingbroke";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Maximilian Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://github.com/phadej/lattices/";
      url = "";
      synopsis = "Fine-grained library for constructing and manipulating lattices";
      description = "In mathematics, a lattice is a partially ordered set in which every two\nelements @x@ and @y@ have a unique supremum (also called a least upper bound, join, or @x /\\\\ y@)\nand a unique infimum (also called a greatest lower bound, meet, or @x \\\\/ y@).\n\nThis package provide type-classes for different lattice types, as well\nas a class for the partial order.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
          (hsPkgs."universe-reverse-instances" or (errorHandler.buildDepError "universe-reverse-instances"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."universe-instances-base" or (errorHandler.buildDepError "universe-instances-base"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }