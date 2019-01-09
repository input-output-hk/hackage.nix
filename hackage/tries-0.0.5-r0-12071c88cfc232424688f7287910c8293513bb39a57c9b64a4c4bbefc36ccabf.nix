{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tries"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/tries#readme";
      url = "";
      synopsis = "Various trie implementations in Haskell";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/tries#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.composition)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.keys)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.rose-trees)
          (hsPkgs.semigroups)
          (hsPkgs.sets)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tries-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.composition)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.keys)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rose-trees)
            (hsPkgs.semigroups)
            (hsPkgs.sets)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tries)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      benchmarks = {
        "tries-bench-lookup" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.composition)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.keys)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rose-trees)
            (hsPkgs.semigroups)
            (hsPkgs.sets)
            (hsPkgs.tries)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }