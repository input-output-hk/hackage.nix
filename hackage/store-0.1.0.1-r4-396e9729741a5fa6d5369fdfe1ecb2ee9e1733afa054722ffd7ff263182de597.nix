{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      comparison-bench = false;
      small-bench = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "store";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "Michael Sloan <sloan@fpcomplete.com>";
      author = "";
      homepage = "https://github.com/fpco/store#readme";
      url = "";
      synopsis = "Fast binary serialization";
      description = "";
      buildType = "Simple";
    };
    components = {
      "store" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.th-utilities)
          (hsPkgs.primitive)
          (hsPkgs.th-reify-many)
          (hsPkgs.th-lift-instances)
          (hsPkgs.array)
          (hsPkgs.base-orphans)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.deepseq)
          (hsPkgs.fail)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hspec)
          (hsPkgs.hspec-smallcheck)
          (hsPkgs.integer-gmp)
          (hsPkgs.mono-traversable)
          (hsPkgs.safe)
          (hsPkgs.smallcheck)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.void)
          (hsPkgs.th-orphans)
        ];
      };
      tests = {
        "store-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.th-utilities)
            (hsPkgs.primitive)
            (hsPkgs.th-reify-many)
            (hsPkgs.th-lift-instances)
            (hsPkgs.array)
            (hsPkgs.base-orphans)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.fail)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.integer-gmp)
            (hsPkgs.mono-traversable)
            (hsPkgs.safe)
            (hsPkgs.smallcheck)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.conduit)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.resourcet)
            (hsPkgs.semigroups)
            (hsPkgs.void)
            (hsPkgs.th-orphans)
            (hsPkgs.store)
          ];
        };
      };
      benchmarks = {
        "store-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.th-utilities)
            (hsPkgs.primitive)
            (hsPkgs.th-reify-many)
            (hsPkgs.th-lift-instances)
            (hsPkgs.array)
            (hsPkgs.base-orphans)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.fail)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.integer-gmp)
            (hsPkgs.mono-traversable)
            (hsPkgs.safe)
            (hsPkgs.smallcheck)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.conduit)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.resourcet)
            (hsPkgs.semigroups)
            (hsPkgs.void)
            (hsPkgs.th-orphans)
            (hsPkgs.criterion)
            (hsPkgs.store)
          ] ++ pkgs.lib.optionals (flags.comparison-bench) [
            (hsPkgs.cereal)
            (hsPkgs.binary)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.cereal-vector)
          ];
        };
      };
    };
  }