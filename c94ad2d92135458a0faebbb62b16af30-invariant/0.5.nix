{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "invariant";
        version = "0.5";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "https://github.com/nfrisby/invariant-functors";
      url = "";
      synopsis = "Haskell98 invariant functors";
      description = "Haskell98 invariant functors (also known as exponential functors).\n\nFor more information, see Edward Kmett's article \\\"Rotten Bananas\\\":\n\n<http://comonad.com/reader/2008/rotten-bananas/>";
      buildType = "Simple";
    };
    components = {
      "invariant" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.ghc-prim)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.StateVar)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.invariant)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }