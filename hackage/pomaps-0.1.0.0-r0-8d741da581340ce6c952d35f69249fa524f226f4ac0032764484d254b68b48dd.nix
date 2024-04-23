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
    flags = { no-lattices = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pomaps"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sebastian Graf <sgraf1337@gmail.com>";
      author = "Sebastian Graf <sgraf1337@gmail.com>";
      homepage = "https://github.com/sgraf812/pomaps#readme";
      url = "";
      synopsis = "Maps and sets of partial orders";
      description = "Maps (and sets) indexed by keys satisfying <https://hackage.haskell.org/package/lattices/docs/Algebra-PartialOrd.html#t:PartialOrd PartialOrd>.\n\nThe goal is to provide asymptotically better data structures than simple association lists or lookup tables.\nAsymptotics depend on the partial order used as keys, its width /w/ specifically (the size of the biggest anti-chain).\n\nFor partial orders of great width, this package won't provide any benefit over using association lists, so benchmark for your use-case!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"));
        buildable = true;
      };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pomaps" or (errorHandler.buildDepError "pomaps"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."ChasingBottoms" or (errorHandler.buildDepError "ChasingBottoms"))
          ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"));
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "pomaps-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pomaps" or (errorHandler.buildDepError "pomaps"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"));
          buildable = true;
        };
      };
    };
  }