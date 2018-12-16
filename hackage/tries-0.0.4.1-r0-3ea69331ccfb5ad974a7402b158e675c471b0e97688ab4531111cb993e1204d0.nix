{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lookup = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tries";
        version = "0.0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various trie implementations in Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.composition)
          (hsPkgs.composition-extra)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.keys)
          (hsPkgs.rose-trees)
          (hsPkgs.semigroups)
          (hsPkgs.sets)
          (hsPkgs.unordered-containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tries)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tries)
            (hsPkgs.criterion)
          ];
        };
        "bench-lookup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tries)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }