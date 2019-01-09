{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "enummapmap"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew West";
      author = "Matthew West and authors of containers v5.0";
      homepage = "";
      url = "";
      synopsis = "Map of maps using Enum types as keys";
      description = "This package provides 'maps of maps' using Enum types as\nkeys.  The code is based upon Data.IntMap in\ncontainers 5.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.lens)
          (hsPkgs.safecopy)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "test-enummapmap-lazy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.safecopy)
            (hsPkgs.semigroups)
            (hsPkgs.enummapmap)
            ];
          };
        "test-enummapmap-intmap-lazy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.deepseq)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.enummapmap)
            ];
          };
        "test-enummapmap-strict" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.safecopy)
            (hsPkgs.semigroups)
            (hsPkgs.enummapmap)
            ];
          };
        "test-enummapmap-intmap-strict" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.deepseq)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.enummapmap)
            ];
          };
        "test-enummapset" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.safecopy)
            (hsPkgs.containers)
            (hsPkgs.enummapmap)
            ];
          };
        "test-enummapset-intset" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.enummapmap)
            ];
          };
        "test-both-lazy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.safecopy)
            (hsPkgs.enummapmap)
            ];
          };
        "test-both-strict" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.safecopy)
            (hsPkgs.enummapmap)
            ];
          };
        };
      benchmarks = {
        "enummapmap-vs-intmap-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.enummapmap)
            ];
          };
        };
      };
    }