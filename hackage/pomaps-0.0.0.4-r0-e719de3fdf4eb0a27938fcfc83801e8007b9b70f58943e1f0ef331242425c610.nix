{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      no-lattices = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pomaps";
        version = "0.0.0.4";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs.lattices);
      };
      tests = {
        "unittests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.pomaps)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.ChasingBottoms)
          ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs.lattices);
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
      benchmarks = {
        "pomaps-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pomaps)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (!flags.no-lattices) (hsPkgs.lattices);
        };
      };
    };
  }