{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-lattices = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pomaps"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sebastian Graf <sgraf1337@gmail.com>";
      author = "";
      homepage = "https://github.com/sgraf812/pomaps#readme";
      url = "";
      synopsis = "Maps and sets of partial orders";
      description = "Maps (and sets) indexed by keys satisfying <https://hackage.haskell.org/package/lattices/docs/Algebra-PartialOrd.html#t:PartialOrd PartialOrd>.\n\nThe goal is to provide asymptotically better data structures than simple association lists or lookup tables.\nAsymptotics depend on the partial order used as keys, its /width/ \\(w\\) specifically (the size of the biggest anti-chain).\n\nFor partial orders with great width, this package won't provide any benefit over using association lists, so benchmark for your use-case!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"));
        buildable = true;
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pomaps" or ((hsPkgs.pkgs-errors).buildDepError "pomaps"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."ChasingBottoms" or ((hsPkgs.pkgs-errors).buildDepError "ChasingBottoms"))
            ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"));
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "pomaps-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pomaps" or ((hsPkgs.pkgs-errors).buildDepError "pomaps"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"));
          buildable = true;
          };
        };
      };
    }