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
      specVersion = "1.10";
      identifier = {
        name = "sets";
        version = "0.0.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various set implementations in Haskell.";
      description = "This also includes overloaded functions for common set operations. See @Data.Set.Class@.";
      buildType = "Simple";
    };
    components = {
      "sets" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.commutative)
          (hsPkgs.composition)
          (hsPkgs.contravariant)
          (hsPkgs.invariant)
          (hsPkgs.witherable)
          (hsPkgs.keys)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.commutative)
            (hsPkgs.composition)
            (hsPkgs.contravariant)
            (hsPkgs.semigroups)
            (hsPkgs.semigroupoids)
            (hsPkgs.keys)
            (hsPkgs.invariant)
            (hsPkgs.witherable)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.commutative)
            (hsPkgs.composition)
            (hsPkgs.contravariant)
            (hsPkgs.invariant)
            (hsPkgs.witherable)
            (hsPkgs.semigroups)
            (hsPkgs.semigroupoids)
            (hsPkgs.keys)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }