{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sets"; version = "0.0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/sets#readme";
      url = "";
      synopsis = "Ducktyped set interface for Haskell containers.";
      description = "Please see the README on Github at <https://github.com/athanclark/sets#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.commutative)
          (hsPkgs.composition)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.hashable)
          (hsPkgs.keys)
          (hsPkgs.mtl)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.witherable)
          ];
        };
      tests = {
        "sets-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.commutative)
            (hsPkgs.composition)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.hashable)
            (hsPkgs.keys)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.semigroupoids)
            (hsPkgs.semigroups)
            (hsPkgs.sets)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.witherable)
            ];
          };
        };
      benchmarks = {
        "sets-bench" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.commutative)
            (hsPkgs.composition)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.criterion)
            (hsPkgs.hashable)
            (hsPkgs.keys)
            (hsPkgs.mtl)
            (hsPkgs.semigroupoids)
            (hsPkgs.semigroups)
            (hsPkgs.sets)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.witherable)
            ];
          };
        };
      };
    }