{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "invariant";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "https://github.com/nfrisby/invariant-functors";
      url = "";
      synopsis = "Haskell 98 invariant functors";
      description = "Haskell 98 invariant functors";
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
          ];
        };
      };
    };
  }